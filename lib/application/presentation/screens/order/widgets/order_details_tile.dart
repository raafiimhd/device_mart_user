import 'package:device/application/bussiness_logic/bloc/order/order_bloc.dart';
import 'package:device/application/presentation/screens/auth/otp_screen/widgets/otp_number_tile.dart';
import 'package:device/application/presentation/screens/order/widgets/rating_review_show_dailog.dart';
import 'package:device/application/presentation/utils/show_snack_bar/show_snack_bar.dart';
import 'package:device/application/presentation/widgets/custom/custom_text_field/custom_text_field.dart';
import 'package:device/domain/core/color/colors.dart';
import 'package:device/domain/core/constants/const.dart';
import 'package:device/domain/models/order/get_order_model/datum.dart';
import 'package:device/domain/models/order/rating_model/rating_model.dart';
import 'package:device/domain/models/order/rating_model/rating_qurrey.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderDetailItemTile extends StatelessWidget {
  const OrderDetailItemTile({
    Key? key,
    required this.data,
  }) : super(key: key);

  final Datum data;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OrderBloc, OrderState>(
      builder: (context, state) {
        return ListTile(
          leading: Container(
            height: sWidth * 0.22,
            width: sWidth * 0.18,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  data.images!['urls'].first,
                ),
              ),
              boxShadow: [
                BoxShadow(
                  color: kBlack.withOpacity(0.8),
                  blurRadius: 1.5,
                  offset: const Offset(0, 2),
                ),
              ],
              color: kWhite,
              borderRadius: const BorderRadius.all(Radius.circular(10)),
            ),
          ),
          title: Text(
            data.productName!,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 18,
            ),
          ),
          subtitle: Text(
            '₹ ${data.productPrice}',
            style: const TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 18,
            ),
          ),
          trailing: RatingAndReviewShowDailg(data: data)
        );
      },
    );
  }

  void _addReviews(BuildContext context, OrderBloc bloc, int id) {
    showDialog(
        context: context,
        builder: (_) => AlertDialog(
            title: const Text('Add Reviews'),
            content: Form(
                key: bloc.ratingFormKey,
                child: Center(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CustomTextFormField(
                          hintText: 'Description',
                          controller: bloc.descriptionController,
                          keyboardType: TextInputType.text,
                        ),
                        kHeightFive,
                        const Text(
                          'Enter Your Rating 1 to 9',
                          style: headStyle,
                        ),
                        Expanded(
                          flex: 1,
                          child: TextFormField(
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(8.0),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                            ),
                            controller: bloc.ratingController,
                            keyboardType: TextInputType.numberWithOptions(
                              decimal: false,
                              signed: true,
                            ),
                          ),
                        ),
                        Container(
                          height: 38.0,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                      width: 0.5,
                                    ),
                                  ),
                                ),
                                child: InkWell(
                                  child: Icon(
                                    Icons.arrow_drop_up,
                                    size: 18.0,
                                  ),
                                  onTap: () {
                                    int currentValue =
                                        int.parse(bloc.ratingController.text);
                                    currentValue++;
                                    bloc.ratingController.text =
                                        (currentValue).toString();
                                  },
                                ),
                              ),
                              InkWell(
                                child: Icon(
                                  Icons.arrow_drop_down,
                                  size: 18.0,
                                ),
                                onTap: () {
                                  int currentValue =
                                      int.parse(bloc.ratingController.text);
                                  currentValue--;
                                  bloc.ratingController.text =
                                      (currentValue > 0 ? currentValue : 0)
                                          .toString(); 
                                },
                              ),
                            ],
                          ),
                        ),
                        TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text('Cancel'),
                  ),
                  TextButton(
                    onPressed: () {
                      if (bloc.ratingFormKey.currentState!.validate()) {
                        if (data.orderStatus == 'Delivered' ||
                            data.orderStatus == 'Returned') {
                          bloc.add(OrderEvent.ratingProductEvent(
                              ratingQurrey: RatingQurrey(id: id),
                              ratingModel: RatingModel(
                                  description: bloc.descriptionController.text,
                                  rating:
                                      int.parse(bloc.ratingController.text))));
                          Navigator.of(context).pop();
                        } else {
                          showSnack(
                              context: context,
                              message:
                                  'Please conform the product deliverd or returned ',
                              color: kRed);
                          Navigator.of(context).pop();
                        }
                      }
                    },
                    child: const Text('Add'),
                  ),
                      ]),
                ))));
  }
}
