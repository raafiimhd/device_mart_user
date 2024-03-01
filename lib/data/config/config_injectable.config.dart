// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:device/application/bussiness_logic/bloc/auth_bloc/auth_bloc.dart'
    as _i24;
import 'package:device/application/bussiness_logic/bloc/cart/cart_bloc.dart'
    as _i25;
import 'package:device/application/bussiness_logic/bloc/category/category_bloc.dart'
    as _i26;
import 'package:device/application/bussiness_logic/bloc/inventory/inventory_bloc.dart'
    as _i20;
import 'package:device/application/bussiness_logic/bloc/order/order_bloc.dart'
    as _i21;
import 'package:device/application/bussiness_logic/bloc/profile/profile_bloc.dart'
    as _i22;
import 'package:device/application/bussiness_logic/bloc/wishlist/wishlist_bloc.dart'
    as _i23;
import 'package:device/application/bussiness_logic/cubit/splash_screen_cubit/splash_screen_cubit.dart'
    as _i11;
import 'package:device/data/data_provider/auth_provider/auth_provider.dart'
    as _i15;
import 'package:device/data/data_provider/cart_provider/cart_provider.dart'
    as _i17;
import 'package:device/data/data_provider/category_provider/category_provider.dart'
    as _i19;
import 'package:device/data/data_provider/inventory_provider/inventory_provider.dart'
    as _i6;
import 'package:device/data/data_provider/order_provider/order_provider.dart'
    as _i8;
import 'package:device/data/data_provider/profile_provider/profile_provider.dart'
    as _i10;
import 'package:device/data/data_provider/wishlist_provider/wishlist_provider.dart'
    as _i13;
import 'package:device/data/module/dio_module.dart' as _i27;
import 'package:device/data/module/flutter_secure_storage.dart' as _i28;
import 'package:device/domain/repositery/auth_repositery/auth_repositery.dart'
    as _i14;
import 'package:device/domain/repositery/cart_repository/cart_repositery.dart'
    as _i16;
import 'package:device/domain/repositery/category_repositery/category_repositery.dart'
    as _i18;
import 'package:device/domain/repositery/inventory_repositery/inventory_repositery.dart'
    as _i5;
import 'package:device/domain/repositery/order_repository/order_repository.dart'
    as _i7;
import 'package:device/domain/repositery/profile_repositery/profile_repositery.dart'
    as _i9;
import 'package:device/domain/repositery/wishlist_repositery/wishlist_repositery.dart'
    as _i12;
import 'package:dio/dio.dart' as _i3;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final dioModule = _$DioModule();
    final secureStorageModule = _$SecureStorageModule();
    gh.lazySingleton<_i3.Dio>(() => dioModule.dioInstance);
    gh.lazySingleton<_i4.FlutterSecureStorage>(
        () => secureStorageModule.flutterSecureStorage);
    gh.lazySingleton<_i5.InventoryRepositery>(() => _i6.InventoryProvider(
          gh<_i3.Dio>(),
          gh<_i4.FlutterSecureStorage>(),
        ));
    gh.lazySingleton<_i7.OrderRepository>(() => _i8.OrderProvider(
          gh<_i3.Dio>(),
          gh<_i4.FlutterSecureStorage>(),
        ));
    gh.lazySingleton<_i9.ProfileRepositery>(() => _i10.ProfileProvider(
          gh<_i3.Dio>(),
          gh<_i4.FlutterSecureStorage>(),
        ));
    gh.factory<_i11.SplashScreenCubit>(
        () => _i11.SplashScreenCubit(gh<_i4.FlutterSecureStorage>()));
    gh.lazySingleton<_i12.WishlistRepositery>(() => _i13.WishlistProvider(
          gh<_i3.Dio>(),
          gh<_i4.FlutterSecureStorage>(),
        ));
    gh.lazySingleton<_i14.AuthRepositery>(() => _i15.AuthProvider(
          gh<_i3.Dio>(),
          gh<_i4.FlutterSecureStorage>(),
        ));
    gh.lazySingleton<_i16.CartRepositery>(() => _i17.CartProvider(
          gh<_i3.Dio>(),
          gh<_i4.FlutterSecureStorage>(),
        ));
    gh.lazySingleton<_i18.CategoryRepository>(() => _i19.CategoryProvider(
          gh<_i3.Dio>(),
          gh<_i4.FlutterSecureStorage>(),
        ));
    gh.factory<_i20.InventoryBloc>(
        () => _i20.InventoryBloc(gh<_i5.InventoryRepositery>()));
    gh.factory<_i21.OrderBloc>(() => _i21.OrderBloc(gh<_i7.OrderRepository>()));
    gh.factory<_i22.ProfileBloc>(
        () => _i22.ProfileBloc(gh<_i9.ProfileRepositery>()));
    gh.factory<_i23.WishlistBloc>(
        () => _i23.WishlistBloc(gh<_i12.WishlistRepositery>()));
    gh.factory<_i24.AuthBloc>(() => _i24.AuthBloc(gh<_i14.AuthRepositery>()));
    gh.factory<_i25.CartBloc>(() => _i25.CartBloc(gh<_i16.CartRepositery>()));
    gh.factory<_i26.CategoryBloc>(
        () => _i26.CategoryBloc(gh<_i18.CategoryRepository>()));
    return this;
  }
}

class _$DioModule extends _i27.DioModule {}

class _$SecureStorageModule extends _i28.SecureStorageModule {}
