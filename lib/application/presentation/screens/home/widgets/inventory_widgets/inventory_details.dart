import 'package:device/application/bussiness_logic/bloc/inventory/inventory_bloc.dart';
import 'package:device/application/presentation/screens/home/widgets/inventory_widgets/bottom_button_widget.dart';
import 'package:device/application/presentation/screens/home/widgets/inventory_widgets/image_product_details_container.dart';
import 'package:device/application/presentation/utils/show_snack_bar/show_snack_bar.dart';
import 'package:device/application/presentation/widgets/custom/custom_appbar/custom_appbar.dart';
import 'package:device/domain/core/color/colors.dart';
import 'package:device/domain/core/constants/const.dart';
import 'package:device/domain/models/inventory_models/inventory_details_model/inventory_details_qurrey_id/inventory_details_qurrey_id.dart';
import 'package:device/domain/models/inventory_models/inventory_details_model/rating_and_review_model/rating_and_review_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class InventoryDetails extends StatelessWidget {
  const InventoryDetails(
      {Key? key, required this.id, required this.isWishlisted})
      : super(key: key);
  final int id;
  final bool isWishlisted;
  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      context.read<InventoryBloc>().add(
            InventoryEvent.productDetailsEvent(
              inventoryDetailsQurreyModel: InventoryDetailsQurreyModel(id: id),
            ),
          );
    });

    return Scaffold(
      backgroundColor: kWhite,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(56),
        child: CustomAppBar(
          title: 'Details',
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back),
          ),
        ),
      ),
      body: BlocConsumer<InventoryBloc, InventoryState>(
        listener: (context, state) {
          if (state.hasError) {
            showSnack(context: context, message: state.message!, color: kRed);
          }
        },
        builder: (context, state) {
          if (state.isLoading) {
            return Center(
              child: LoadingAnimationWidget.inkDrop(color: kWhite, size: 25),
            );
          } else if (state.inventoryDetailsRespModel != null &&
              state.inventoryDetailsRespModel!.data != null) {
            final inventory = state.inventoryDetailsRespModel!.data!;
            return CustomScrollView(
              slivers: [
                SliverList(
                  delegate: SliverChildListDelegate(
                    [
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ImageShowContainer(state: state, width: 0.5),
                            Text(
                              inventory.productName!,
                              style: kronOne(),
                            ),
                            kHeightFive,
                            Text(
                              "₹${inventory.price!.roundToDouble()}",
                              style: priceStyle,
                            ),
                            kHeightFive,
                            Center(
                              child: Text(
                                'About this ${inventory.productName!}',
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Divider(
                                color: kGery,
                              ),
                            ),
                            Text(
                              inventory.productDesc!,
                              style: kronOne(fontWeight: FontWeight.w400),
                            ),
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Divider(
                                color: kGery,
                              ),
                            ),
                            kHeightTen,
                            const Boldtext18(text: 'Rating And Reviews'),
                            ListView.builder(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: inventory.ratingAndReviews!.length,
                              itemBuilder: (context, index) {
                                RatingAndReview review =
                                    inventory.ratingAndReviews![index];
                                return Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      boxShadow: const [
                                        BoxShadow(
                                          color: Color.fromARGB(
                                              255, 222, 221, 221),
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
                                    child: ListTile(
                                      title: Text('User: ${review.userName}'),
                                      subtitle: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text('Rating: ${review.rating}'),
                                          Text(
                                              'Description: ${review.desription}'),
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          } else {
            return const Center(
              child: Text('no  data available'),
            );
          }
        },
      ),
      bottomNavigationBar: BottomButtonsDetails(
        id: id,
        isWishlisted: isWishlisted,
      ),
    );
  }
}
