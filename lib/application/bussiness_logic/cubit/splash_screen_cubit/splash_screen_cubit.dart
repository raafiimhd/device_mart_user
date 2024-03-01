import 'package:bloc/bloc.dart';
import 'package:device/application/presentation/routes/routes.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'splash_screen_cubit.freezed.dart';
part 'splash_screen_state.dart';

@injectable
class SplashScreenCubit extends Cubit<SplashScreenState> {
  FlutterSecureStorage secureStorage;
  SplashScreenCubit(this.secureStorage)
      : super(const SplashScreenState.initial());

  Future<String> nextScreenRoute() async {
    final value = await secureStorage.read(key: 'token');
    print('Tokens:$value');
    if (value == null) {
      return Routes.initialPage;
    } else {
      return Routes.mainpage;
    }
  }
}
