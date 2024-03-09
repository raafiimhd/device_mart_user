import 'package:device/application/bussiness_logic/bloc/order/order_bloc.dart';
import 'package:device/application/presentation/utils/show_snack_bar/show_snack_bar.dart';
import 'package:device/application/presentation/widgets/custom/custom_text_field/custom_text_field.dart';
import 'package:device/domain/core/color/colors.dart';
import 'package:device/domain/core/constants/const.dart';
import 'package:device/domain/models/order/get_order_model/datum.dart';
import 'package:device/domain/models/order/rating_model/rating_model.dart';
import 'package:device/domain/models/order/rating_model/rating_qurrey.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RatingAndReviewShowDailg extends StatefulWidget {
  const RatingAndReviewShowDailg({super.key, required this.data});
  final Datum data;
  @override
  State<RatingAndReviewShowDailg> createState() =>
      _RatingAndReviewShowDailgState();
}

class _RatingAndReviewShowDailgState extends State<RatingAndReviewShowDailg> {
  @override
  void initState() {
    super.initState();
    context.read<OrderBloc>().ratingController.text = '0';
  }

  void _addReviews(BuildContext context) {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text('Add Reviews'),
        content: Form(
          key: context.read<OrderBloc>().ratingFormKey,
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomTextFormField(
                  hintText: 'Description',
                  controller: context.read<OrderBloc>().descriptionController,
                  keyboardType: TextInputType.text,
                ),
                kHeightFive,
                const Text(
                  'Enter Your Rating 1 to 5',
                  style: headStyle,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {
                        int currentValue = int.parse(context
                            .read<OrderBloc>()
                            .ratingController
                            .text);
                        if (currentValue < 5) {
                          setState(() {
                            currentValue++;
                            context
                                .read<OrderBloc>()
                                .ratingController
                                .text = (currentValue).toString();
                          });
                        }
                      },
                      icon: Icon(Icons.arrow_drop_up),
                    ),
                    Container(
                      width: 60.0,
                      foregroundDecoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        border: Border.all(
                          color: Colors.blueGrey,
                          width: 2.0,
                        ),
                      ),
                      child: TextFormField(
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(8.0),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                        controller: context.read<OrderBloc>().ratingController,
                        keyboardType: TextInputType.numberWithOptions(
                          decimal: false,
                          signed: true,
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        int currentValue = int.parse(context
                            .read<OrderBloc>()
                            .ratingController
                            .text);
                        if (currentValue > 1) {
                          setState(() {
                            currentValue--;
                            context
                                .read<OrderBloc>()
                                .ratingController
                                .text = (currentValue > 0 ? currentValue : 0)
                                .toString();
                          });
                        }
                      },
                      icon: Icon(Icons.arrow_drop_down),
                    ),
                  ],
                ),
                kHeight400,
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children:[
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text('Cancel'),
                  ),
                  TextButton(
                    onPressed: () {
                      if (context
                          .read<OrderBloc>()
                          .ratingFormKey
                          .currentState!
                          .validate()) {
                        if (widget.data.orderStatus == 'Delivered' ||
                            widget.data.orderStatus == 'Returned') {
                          context.read<OrderBloc>().add(
                            OrderEvent.ratingProductEvent(
                              ratingQurrey: RatingQurrey(
                                id: context.read<OrderBloc>().id,
                              ),
                              ratingModel: RatingModel(
                                description: context
                                    .read<OrderBloc>()
                                    .descriptionController
                                    .text,
                                rating: int.parse(context
                                    .read<OrderBloc>()
                                    .ratingController
                                    .text),
                              ),
                            ),
                          );
                          Navigator.of(context).pop();
                        } else {
                          showSnack(
                            context: context,
                            message:
                                'Please conform the product deliverd or returned ',
                            color: kRed,
                          );
                          Navigator.of(context).pop();
                        }
                      }
                    },
                    child: const Text('Add'),
                  ),
              ]
            )
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        context.read<OrderBloc>().id = widget.data.productId;
        _addReviews(
          context,
        );
      },
      child: const Text('Submit Review'),
    );
  }
}
