import 'package:dartz/dartz.dart';
import 'package:device/domain/core/constants/api_endpoint/api_endpoint.dart';
import 'package:device/domain/core/constants/const.dart';
import 'package:device/domain/core/constants/error_msg.dart';
import 'package:device/domain/models/category_models/category_qurrey_model/category_qurrey_model.dart';
import 'package:device/domain/models/category_models/category_resp_model/category_resp_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';

import 'package:device/domain/repositery/category_repositery/category_repositery.dart';

@LazySingleton(as: CategoryRepository)
@injectable
class CategoryProvider implements CategoryRepository {
  final Dio dio;
  final FlutterSecureStorage secureStorage;
  CategoryProvider(
    this.dio,
    this.secureStorage,
  );

  @override
  Future<Either<ErrorMsg, CategoryRespModel>> getCategory(
      {required CategoryQurreyModel categoryQurreyModel}) async {
    try {
      final token = await secureStorage.read(key: 'token');

      if (token != null) {
        dio.options.headers["Authorization"] = 'Bearer $token';
        dio.options.headers["accept"] = 'application/json';
      } else {
        return Left(ErrorMsg(message: 'Token is null.'));
      }
      final response = await dio.get(ApiEndPoint.getCategoryEndPoint,
          queryParameters: categoryQurreyModel.toJson());
      if (response.statusCode == 200 || response.statusCode == 201) {
        return Right(CategoryRespModel.fromJson(response.data));
      } else {
        return Left(ErrorMsg(
            message: CategoryRespModel.fromJson(response.data).message!));
      }
    } on DioException {
      return Left(ErrorMsg(message: errorMsg));
    } catch (e) {
      return Left(ErrorMsg(message: errorMsg));
    }
  }
}
