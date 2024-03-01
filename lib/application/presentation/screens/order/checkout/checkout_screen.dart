import 'dart:developer';

import 'package:device/application/bussiness_logic/bloc/order/order_bloc.dart';
import 'package:device/application/bussiness_logic/bloc/profile/profile_bloc.dart';
import 'package:device/application/presentation/routes/routes.dart';
import 'package:device/application/presentation/screens/main_page/main_page.dart';
import 'package:device/application/presentation/screens/order/widgets/animation_screen.dart';
import 'package:device/application/presentation/screens/settings/widgets/profile/address/address_screen.dart';
import 'package:device/application/presentation/screens/settings/widgets/profile/address/get_address_widget.dart';
import 'package:device/application/presentation/utils/show_snack_bar/show_snack_bar.dart';
import 'package:device/application/presentation/widgets/custom/custom_appbar/custom_appbar.dart';
import 'package:device/domain/core/color/colors.dart';
import 'package:device/domain/core/constants/const.dart';
import 'package:device/domain/models/order/razor_pay_model/razor_pay_model.dart';
import 'package:device/domain/models/order/razorpay_proces_model/razorpay_proces_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';

class ScreenCheckout extends StatefulWidget {
  const ScreenCheckout({super.key, required this.totalAmount});
  final int totalAmount;
  @override
  State<ScreenCheckout> createState() => _ScreenCheckoutState();
}

class _ScreenCheckoutState extends State<ScreenCheckout> {
  int priceTotal = 0;
  var razorpay = Razorpay();
  @override
  void initState() {
    context.read<OrderBloc>().add(GetRazorpayEvent());
    razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
    razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
    razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);
    super.initState();
  }

  @override
  void dispose() {
    razorpay.clear();
    super.dispose();
  }

  void _handlePaymentSuccess(PaymentSuccessResponse response) async {
    // Do something when payment succeeds

    log("payment is success");
    log("pymtn id  ${response.paymentId}");
    log("order id  ${response.orderId}");
    log("sign id  ${response.signature}");
    log("place order");
    context.read<OrderBloc>().add(OrderEvent.razorpayProcess(
        razorpayProcesModel: RazorpayProcesModel(
            razorpayPaymentId: response.paymentId,
            razorpayOrderId: response.orderId,
            razorpaySignature: response.signature)));
    log("placed order");
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: Text("Payment is Success"),
          actions: [
            TextButton(
                onPressed: () {
                  Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(builder: (context) => MainPage()),
                      (route) => false);
                },
                child: Text("Ok")),
          ],
        );
      },
    );
  }

  void _handlePaymentError(PaymentFailureResponse response) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(response.error.toString()),
          content: Text(response.message.toString()),
          actions: [
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Ok")),
          ],
        );
      },
    );
  }

  void _handleExternalWallet(ExternalWalletResponse response) {
  }
  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<OrderBloc>().add(const OrderEvent.getCheckoutEvent());
      context.read<ProfileBloc>().add(const ProfileEvent.getAddressEvent());
    });
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(56),
          child: CustomAppBar(title: 'Checkout')),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CheckOutAddressTile(),
              kHeightTen,
              const Divider(),
              const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  'Cart Items',
                  style: headStyle,
                ),
              ),
              SizedBox(
                height: sWidth * 0.45,
                child: BlocConsumer<OrderBloc, OrderState>(
                  listener: (context, state) {
                    if (state.hasError) {
                      showSnack(
                          context: context,
                          message: state.message!,
                          color: state.hasError ? kRed : kGreen);
                    }
                    if (state.message == 'Order placed') {
                      Navigator.pushNamedAndRemoveUntil(
                          context, Routes.home, (route) => false);
                    }
                  },
                  builder: (context, state) {
                    if (state.isLoading) {
                      return Center(
                          child: LoadingAnimationWidget.inkDrop(
                              color: kWhite, size: 25));
                    }
                    if (state.checkoutModel == null ||
                        state.checkoutModel!.data == null ||
                        state.checkoutModel!.data!.items == null ||
                        state.checkoutModel!.data!.items!.isEmpty) {
                      return const Text('items is empty');
                    }
                    return ListView.builder(
                        itemCount: state.checkoutModel!.data!.items!.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          final data = state.checkoutModel!.data!.items![index];
                          priceTotal = data.price!;
                          return Column(
                            children: [
                              Container(
                                height: 100,
                                width: 140,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: NetworkImage(
                                      data.images!['urls'].first,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: sWidth * 0.25,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      data.productName!,
                                      overflow: TextOverflow.ellipsis,
                                      style: headStyle,
                                    ),
                                    Text(
                                        '₹ ${widget.totalAmount} X ${data.qty}')
                                  ],
                                ),
                              ),
                            ],
                          );
                        });
                  },
                ),
              ),
              const ChoosePaymentMethod(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: BlocBuilder<OrderBloc, OrderState>(
          builder: (context, state) {
            return ElevatedButton(
              onPressed: () {
                if (context.read<ProfileBloc>().defaultAddress == null) {
                  showSnack(
                      context: context, message: 'Add address and try again');
                  return;
                } else if (state.selectPayementId == null) {
                  showSnack(
                      context: context, message: 'Choose a payment option');
                  return;
                } else if (state.selectPayementId == 1) {
                  context
                      .read<OrderBloc>()
                      .add(OrderEvent.cashOnDeliveryEvent());
                  if (state.successRespModel != null &&
                      state.successRespModel!.message ==
                          'Success,order placed.') {
                    Navigator.of(context).pushAndRemoveUntil(
                        MaterialPageRoute(
                            builder: (context) => AnimationScreen(
                                  id: state.selectPayementId!,
                                )),
                        (route) => false);
                  }
                } else if (state.selectPayementId == 2) {
                  if (state.razor != null) {
                    paymentFunction(razor: state.razor!);
                  }
                } else if (state.selectPayementId == 3) {
                  context.read<OrderBloc>().add(OrderEvent.selectWalletEvent());
                  if (
                      state.selectWalletResp!.message == 'Success') {
                    Navigator.of(context).pushAndRemoveUntil(
                        MaterialPageRoute(
                            builder: (context) => AnimationScreen(
                                  id: state.selectPayementId!,
                                )),
                        (route) => false);
                  } 
                }
              },
              style: elevatedButtonStyleBlack,
              child: const Text('Place order'),
            );
          },
        ),
      ),
    );
  }

  void paymentFunction({required RazorPayModel razor}) async {
    print(razor.data!.amount!);
    print(razor.data!.razorpayOrderId);
    Map<String, dynamic> options = {
      'key': 'rzp_test_uWMYS3WEXJOc8p',
      'amount': razor.data!.amount!,
      'name': razor.data!.username,
      'description': 'Product Id. # 1234',
      'timeout': 60,
      'prefill': {'contact': '9123456789', 'email': 'gaurav.kumar@gmail.com'},
      'order_id': razor.data!.razorpayOrderId,
    };

    razorpay.open(options);
  }
}

class ChoosePaymentMethod extends StatelessWidget {
  const ChoosePaymentMethod({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Divider(),
        const Text(
          'Payment method',
          style: headStyle,
        ),
        BlocBuilder<OrderBloc, OrderState>(
          builder: (context, state) {
            if (state.isLoading) {
              return Center(
                  child:
                      LoadingAnimationWidget.inkDrop(color: kWhite, size: 25));
            }
            if (state.checkoutModel == null ||
                state.checkoutModel!.data == null ||
                state.checkoutModel!.data!.paymentOptions == null ||
                state.checkoutModel!.data!.paymentOptions!.isEmpty) {
              return const Text(
                  'Please Conform Do You have a address or network connection');
            }
            final methods = state.checkoutModel!.data!.paymentOptions;
            return Wrap(
              children: List.generate(
                methods!.length,
                (int index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: ChoiceChip(
                      padding: const EdgeInsets.all(8),
                      label: Text(methods[index].method!),
                      selectedColor: kGreen,
                      selected: methods[index].id != null &&
                          state.selectPayementId == methods[index].id,
                      onSelected: (bool selected) {
                        context.read<OrderBloc>().add(OrderEvent.selectPayement(
                            selectPayementId: methods[index].id!));
                      },
                    ),
                  );
                },
              ).toList(),
            );
          },
        ),
      ],
    );
  }
}

class CheckOutAddressTile extends StatelessWidget {
  const CheckOutAddressTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileBloc, ProfileState>(
      builder: (context, state) {
        final defaultAddress = context.read<ProfileBloc>().defaultAddress;
        return Column(
          children: [
            SizedBox(
              width: sWidth,
              child: Card(
                margin:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      defaultAddress == null
                          ? kHeight50
                          : Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  'Address',
                                  style: TextStyle(fontWeight: FontWeight.w700),
                                ),
                                kHeightFive,
                                Text(
                                    '${defaultAddress.name}\n${defaultAddress.addressLine},\n${defaultAddress.district},\n${defaultAddress.locality},\n${defaultAddress.state},\n${defaultAddress.phoneNumber},\n${defaultAddress.landmark} \npin: ${defaultAddress.pincode}'),
                              ],
                            ),
                      const Spacer(),
                      Column(
                        children: [
                          IconButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => AddAddressScreen()));
                              },
                              icon: const Icon(Icons.add)),
                          IconButton(
                              onPressed: () {
                                context
                                    .read<ProfileBloc>()
                                    .add(const ProfileEvent.showList());
                              },
                              icon: const Icon(
                                  Icons.arrow_drop_down_circle_sharp)),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            Visibility(
              visible: state.showList,
              child: const GetAddressWidget(formCheckout: true),
            )
          ],
        );
      },
    );
  }
}
