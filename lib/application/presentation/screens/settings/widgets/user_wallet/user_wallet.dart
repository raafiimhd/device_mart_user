import 'package:device/application/bussiness_logic/bloc/profile/profile_bloc.dart';
import 'package:device/domain/core/color/colors.dart';
import 'package:device/domain/core/constants/const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:lottie/lottie.dart';

class ScreenWallet extends StatelessWidget {
  const ScreenWallet({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      context.read<ProfileBloc>().add(
            ProfileEvent.getWalletEvent(),
          );
    });
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      context.read<ProfileBloc>().add(
            ProfileEvent.getWalletHistoryEvent(),
          );
    });
    return Scaffold(
      body: BlocBuilder<ProfileBloc, ProfileState>(builder: (context, state) {
        if (state.isLoading) {
          return Center(
              child: LoadingAnimationWidget.inkDrop(color: kWhite, size: 25));
        } else if (state.walletModel != null && state.walletHistory != null) {
          final wallet = state.walletModel!.data;
          return SafeArea(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: Icon(Icons.arrow_back)),
                    kWidth120,
                    Text(
                      'Wallet',
                      style: kronOne(fontSize: 0.038),
                    ),
                  ],
                ),
                Container(
                  width: 500,
                  height: 180,
                  child: Padding(
                    padding: const EdgeInsets.all(30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Total Balance',
                          style: kronOne(fontSize: 0.038),
                        ),
                        Text(
                          wallet!.amount!.toString(),
                          style: kronOne(fontSize: 0.065),
                        ),
                        kHeightFive,
                        
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: sColor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(70.0),
                        topRight: Radius.circular(70.0),
                      ),
                    ),
                    child: ListView.separated(
                      itemCount: state.walletHistory!.data!.length,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        final walletHistory = state.walletHistory!.data![index];
                        return ListTile(
                          leading: CircleAvatar(
                            child: Text(walletHistory.id.toString()),
                          ),
                          title: Text(
                            "Amount:${walletHistory.amount.toString()}",
                            style: headStyle,
                          ),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                walletHistory.transactionType!,
                                style: TextStyle(color: kBlack),
                              ),
                              Text(walletHistory.transactionTime.toString())
                            ],
                          ),
                        );
                      },
                      separatorBuilder: (context, index) => Divider(),
                    ),
                  ),
                )
              ],
            ),
          );
        } else {
          return Center(
            child: LottieBuilder.asset(
                'assets/lottie_files/Animation - 1708933849544.json',
                fit: BoxFit.cover,
                height: size.width * 0.9),
          );
        }
      }),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Create Wallet',
        onPressed: () {
          context.read<ProfileBloc>().add(ProfileEvent.createWalletEvent());
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
