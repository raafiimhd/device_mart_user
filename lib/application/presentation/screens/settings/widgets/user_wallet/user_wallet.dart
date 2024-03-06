import 'package:device/application/bussiness_logic/bloc/profile/profile_bloc.dart';
import 'package:device/domain/core/color/colors.dart';
import 'package:device/domain/core/constants/const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';

class ScreenWallet extends StatelessWidget {
  const ScreenWallet({super.key,});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      context.read<ProfileBloc>().add(const ProfileEvent.getWalletEvent());
      context.read<ProfileBloc>().add(const ProfileEvent.getWalletHistoryEvent());
    });

    return Scaffold(
      body: BlocBuilder<ProfileBloc, ProfileState>(
        builder: (context, state) {
           if (state.walletModel != null && state.walletHistory != null) {
            final wallet = state.walletModel!.data!;
            final walletHistory = state.walletHistory!.data!;

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
                        icon: const Icon(Icons.arrow_back),
                      ),
                      const SizedBox(width: 120),
                      Text(
                        'Wallet',
                        style: kronOne(fontSize: 0.038),
                      ),
                    ],
                  ),
                  SizedBox(
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
                            wallet.amount.toString(),
                            style: kronOne(fontSize: 0.065),
                          ),
                          const SizedBox(height: 5),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      decoration: const BoxDecoration(
                        color: sColor,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(70.0),
                          topRight: Radius.circular(70.0),
                        ),
                      ),
                      child: ListView.separated(
                        itemCount: walletHistory.length,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          final history = walletHistory[index];
                          return ListTile(
                            leading: CircleAvatar(
                              child: Text(history.id.toString()),
                            ),
                            title: Text(
                              "Amount: ${history.amount}",
                              style: headStyle,
                            ),
                            subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  history.transactionType!,
                                  style: const TextStyle(color: kBlack),
                                ),
                                Text(history.transactionTime.toString())
                              ],
                            ),
                          );
                        },
                        separatorBuilder: (context, index) => const Divider(),
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
                height: MediaQuery.of(context).size.width * 0.9,
              ),
            );
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Create Wallet',
        onPressed: () {
          context.read<ProfileBloc>().add(const ProfileEvent.createWalletEvent());
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
