import 'package:device/domain/core/constants/const.dart';
import 'package:device/domain/core/color/colors.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class BottomNavigationBarWidget extends StatelessWidget {
  const BottomNavigationBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: indexChangeNotifier,
      builder: (context, int newIndex, _) {
        return BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: kWhite,
            currentIndex: newIndex,
            selectedItemColor: kBlack,
            unselectedItemColor: unSelectedColors,
            selectedIconTheme: const IconThemeData(
              color: kBlack,
            ),
            unselectedIconTheme: const IconThemeData(color: unSelectedColors),
            onTap: (index) {
              indexChangeNotifier.value = index;
            },
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.assignment), label: 'Order'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.favorite), label: 'wishlist'),
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_cart_outlined), label: 'cart'),
              BottomNavigationBarItem(
                  icon: Icon(Iconsax.user), label: 'profile'),
            ]);
      },
    );
  }
}
