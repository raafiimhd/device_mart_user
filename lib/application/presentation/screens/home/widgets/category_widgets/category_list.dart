import 'package:device/application/bussiness_logic/bloc/category/category_bloc.dart';
import 'package:device/application/presentation/screens/home/widgets/category_widgets/category_by_products/category_widget_screen.dart';
import 'package:device/application/presentation/utils/show_snack_bar/show_snack_bar.dart';
import 'package:device/domain/core/color/colors.dart';
import 'package:device/domain/core/constants/const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class CategoryListWidget extends StatelessWidget {
  const CategoryListWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CategoryBloc, CategoryState>(
        listener: (context, state) {
      if (state.hasError) {
        showSnack(context: context, message: state.message!, color: kRed);
      }
    }, builder: (context, state) {
      if (state.isLoading) {
        return Center(
            child: LoadingAnimationWidget.inkDrop(color: kWhite, size: 25));
      } else if (state.categoryRespModel != null &&
          state.categoryRespModel!.data != null &&
          state.categoryRespModel!.data!.isNotEmpty) {
        return SizedBox(
          height: sWidth * 0.4,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              itemCount: state.categoryRespModel!.data!.length,
              itemBuilder: (BuildContext context, int index) {
                final category = state.categoryRespModel!.data![index];
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (ctx) => ScreenCategory(
                                id: category.id!,
                              )));
                    },
                    child: Column(
                      children: [
                        Container(
                          height: 100,
                          width: 140,
                          decoration: category.images != null
                              ? BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          category.images!['urls'].first)))
                              : null,
                        ),
                        Text(
                          category.categoryName!,
                          style: kronOne(),
                        )
                      ],
                    ),
                  ),
                );
              }),
        );
      } else {
        return const Center(
          child: Text('no Category available'),
        );
      }
    });
  }
}
