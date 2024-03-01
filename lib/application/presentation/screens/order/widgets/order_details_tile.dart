import 'package:device/application/bussiness_logic/bloc/order/order_bloc.dart';
import 'package:device/application/presentation/screens/auth/otp_screen/widgets/otp_number_tile.dart';
import 'package:device/application/presentation/utils/show_snack_bar/show_snack_bar.dart';
import 'package:device/application/presentation/widgets/custom/custom_text_field/custom_text_field.dart';
import 'package:device/domain/core/color/colors.dart';
import 'package:device/domain/core/constants/const.dart';
import 'package:device/domain/models/order/get_order_model/datum.dart';
import 'package:device/domain/models/order/rating_model/rating_model.dart';
import 'package:device/domain/models/order/rating_model/rating_qurrey.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderDetailItemTile extends StatelessWidget {
  OrderDetailItemTile({
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
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 18,
            ),
          ),
          trailing: TextButton(
            onPressed: () {
              context.read<OrderBloc>().id = data.productId;
              print(context.read<OrderBloc>().id);
              _addReviews(
                context,
                context.read<OrderBloc>(),
                context.read<OrderBloc>().id!,
              );
            },
            child: Text('Submit Review'),
          ),
        );
      },
    );
  }

  void _addReviews(BuildContext context, OrderBloc bloc, int id) {
    showDialog(
        context: context,
        builder: (_) => AlertDialog(
              title: Text('Add Reviews'),
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
                      Text(
                        'Enter Your Rating 1 to 9',
                        style: headStyle,
                      ),
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          OTPNumberTIle(),
                          TextFormField(
                            controller: bloc.ratingController,
                            maxLength: 1,
                            onChanged: (value) {
                              if (value.length == 2) {
                                FocusScope.of(context).unfocus();
                              }
                            },
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            style: GoogleFonts.kronaOne(
                              fontSize: 0.1 * sWidth,
                              fontWeight: FontWeight.w600,
                              color: kBlack,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('Cancel'),
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
                  child: Text('Add'),
                ),
              ],
            ));
  }
}
