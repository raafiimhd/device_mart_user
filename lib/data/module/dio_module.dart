import 'package:device/domain/core/constants/api_endpoint/api_endpoint.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@module
abstract class DioModule {
  @lazySingleton
  Dio get dioInstance => Dio(BaseOptions(baseUrl: ApiEndPoint.baseUrl));
}
