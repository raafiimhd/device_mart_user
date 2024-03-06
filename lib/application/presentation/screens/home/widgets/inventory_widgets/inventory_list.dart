import 'package:device/application/bussiness_logic/bloc/inventory/inventory_bloc.dart';
import 'package:device/application/presentation/screens/home/widgets/inventory_widgets/inventory_details.dart';
import 'package:device/application/presentation/utils/fav_button/fav_button.dart';
import 'package:device/application/presentation/utils/show_snack_bar/show_snack_bar.dart';
import 'package:device/domain/core/color/colors.dart';
import 'package:device/domain/core/constants/const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class InventoryListWidget extends StatelessWidget {
  const InventoryListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<InventoryBloc, InventoryState>(
      listener: (context, state) {
        if (state.hasError) {
          showSnack(context: context, message: state.message!, color: kRed);
        }
      },
      buildWhen: (p, c) => p.inventories != c.inventories,
      builder: (context, state) {
        if (state.isLoading) {
          return Center(
            child: LoadingAnimationWidget.inkDrop(color: kWhite, size: 25),
          );
        } else if (state.inventories != null) {
          return GridView.builder(
            padding: const EdgeInsets.only(left: 9, right: 9),
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1.2,
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 10.0,
            ),
            itemCount: state.inventories!.length,
            itemBuilder: (BuildContext context, int index) {
              final inventoryState = state.inventories![index];
              return InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => InventoryDetails(
                      id: state.inventories![index].id!,
                      isWishlisted: inventoryState.isWishlisted ?? false,
                    ),
                  ));
                },
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                        color: Color.fromARGB(255, 222, 221, 221),
                        offset: Offset(
                          5.0,
                          5.0,
                        ),
                        blurRadius: 10.0,
                        spreadRadius: 2.0,
                      ),
                      BoxShadow(
                        color: kWhite,
                        offset: Offset(0.0, 0.0),
                        blurRadius: 0.0,
                        spreadRadius: 0.0,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                          top: 15,
                          left: 10,
                          child: Container(
                            height: 100,
                            width: 140,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage( inventoryState.images!['urls'].first
                                    
                              )),
                            ),
                          )),
                      Positioned(
                        right: 3,
                        child: FavButton(
                          id: inventoryState.id!,
                          isFav: inventoryState.isWishlisted ?? false,
                        ),
                      ),
                      Positioned(
                        bottom: 10,
                        left: 30,
                        child: Text(
                          inventoryState.productName!,
                          overflow: TextOverflow.ellipsis,
                          style: kronOne(),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        } else {
          return const Center(
            child: Text('no Products available'),
          );
        }
      },
    );
  }
}
