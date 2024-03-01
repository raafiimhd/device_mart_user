import 'package:device/application/presentation/screens/cart/screen_cart.dart';
import 'package:device/application/presentation/screens/home/screen_home.dart';
import 'package:device/application/presentation/screens/main_page/widgets/bottom_nav.dart';
import 'package:device/application/presentation/screens/settings/screen_settings.dart';
import 'package:device/application/presentation/screens/order/screen_order.dart';
import 'package:device/application/presentation/screens/screen_wishlist/screen_wishlist.dart';
import 'package:device/domain/core/constants/const.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  MainPage({super.key});
  final _pages = [
    const ScreenOrder(),
    const ScreenWishList(),
    const ScreenHome(),
    const ScreenCart(),
    const ScreenSettings(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ValueListenableBuilder(
          valueListenable: indexChangeNotifier,
          builder: (context, int index, _) {
            return _pages[index];
          },
        ),
      ),
      bottomNavigationBar: const BottomNavigationBarWidget(),
    );
  }
}
