import 'package:device/application/bussiness_logic/bloc/auth_bloc/auth_bloc.dart';
import 'package:device/application/bussiness_logic/bloc/cart/cart_bloc.dart';
import 'package:device/application/bussiness_logic/bloc/category/category_bloc.dart';
import 'package:device/application/bussiness_logic/bloc/inventory/inventory_bloc.dart';
import 'package:device/application/bussiness_logic/bloc/order/order_bloc.dart';
import 'package:device/application/bussiness_logic/bloc/profile/profile_bloc.dart';
import 'package:device/application/bussiness_logic/bloc/wishlist/wishlist_bloc.dart';
import 'package:device/application/bussiness_logic/cubit/splash_screen_cubit/splash_screen_cubit.dart';
import 'package:device/application/presentation/routes/routes.dart';
import 'package:device/application/presentation/routes/routes_generator.dart';
import 'package:device/data/config/config_injectable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection();
  runApp(DeviceMartUser(
    routeGenerator: RouteGenerator(),
  ));
}

class DeviceMartUser extends StatelessWidget {
  const DeviceMartUser({super.key, required this.routeGenerator});
  final RouteGenerator routeGenerator;
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<AuthBloc>(),
        ),
        BlocProvider(create: (context) => getIt<SplashScreenCubit>()),
        BlocProvider(create: (context) => getIt<CategoryBloc>()),
        BlocProvider(create: (context) => getIt<InventoryBloc>()),
        BlocProvider(create: (context) => getIt<WishlistBloc>()),
        BlocProvider(create: (context) => getIt<CartBloc>()),
        BlocProvider(create: (context) => getIt<ProfileBloc>()),
        BlocProvider(create: (context) => getIt<OrderBloc>()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        initialRoute: Routes.initial,
        onGenerateRoute: routeGenerator.onGenerateRoute,
      ),
    );
  }
}
