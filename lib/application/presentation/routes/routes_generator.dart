import 'package:device/application/presentation/routes/routes.dart';
import 'package:device/application/presentation/screens/auth/initial_page/initial_page.dart';
import 'package:device/application/presentation/screens/auth/register_phone_number_screen/register_phone_number_screen.dart.dart';
import 'package:device/application/presentation/screens/auth/otp_screen/otp_verfication_screen.dart';
import 'package:device/application/presentation/screens/auth/sign_in/sign_in_screen.dart';
import 'package:device/application/presentation/screens/auth/sign_up/sign_up_screen.dart';
import 'package:device/application/presentation/screens/cart/screen_cart.dart';
import 'package:device/application/presentation/screens/home/screen_home.dart';
import 'package:device/application/presentation/screens/main_page/main_page.dart';
import 'package:device/application/presentation/screens/screen_coupon/screen_coupon.dart';
import 'package:device/application/presentation/screens/settings/screen_settings.dart';
import 'package:device/application/presentation/screens/order/screen_order.dart';
import 'package:device/application/presentation/screens/screen_wishlist/screen_wishlist.dart';
import 'package:device/application/presentation/screens/search/search_screen.dart';
import 'package:device/application/presentation/screens/settings/widgets/privacy_police_screen.dart';
import 'package:device/application/presentation/screens/settings/widgets/terms_condition_screen.dart';
import 'package:device/application/presentation/screens/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  Route onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.initial:
        return MaterialPageRoute(builder: (ctx) => const ScreenSplash());
      case Routes.initialPage:
        return MaterialPageRoute(builder: (ctx) => const InitialPage());
      case Routes.register:
        return MaterialPageRoute(
            builder: (ctx) => const RegisterPhoneNumberScreen());
      case Routes.otpVerification:
        return MaterialPageRoute(
            builder: (ctx) => const ScreenOTPVerification());
      case Routes.signInPage:
        return MaterialPageRoute(builder: (ctx) => const SignInScreen());
      case Routes.signUpPage:
        return MaterialPageRoute(builder: (ctx) => const SignUpScreen());
      case Routes.mainpage:
        return MaterialPageRoute(builder: (ctx) => MainPage());
      case Routes.home:
        return MaterialPageRoute(
          builder: (ctx) => const ScreenHome(),
        );
      case Routes.search:
        return MaterialPageRoute(builder: (ctx) => const SearchScreen());
      case Routes.orderScreen:
        return MaterialPageRoute(builder: (ctx) => const ScreenOrder());
      case Routes.cartScreen:
        return MaterialPageRoute(builder: (ctx) => const ScreenCart());
      case Routes.couponScreen:
        return MaterialPageRoute(builder: (ctx) => const SceenCoupon());
      case Routes.wishlist:
        return MaterialPageRoute(builder: (ctx) => const ScreenWishList());
      case Routes.settings:
        return MaterialPageRoute(builder: (ctx) => const ScreenSettings());
      case Routes.settingsWidgetOne:
        return MaterialPageRoute(
            builder: (ctx) => const PrivacyAndPolicyScreen());
      case Routes.settingsWidgetTwo:
        return MaterialPageRoute(builder: (ctx) => const TermsAndCondition());
    }
    return _errorRoute();
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (ctx) {
      return const Scaffold(
        body: Center(
          child: Text('Something Error'),
        ),
      );
    });
  }
}
