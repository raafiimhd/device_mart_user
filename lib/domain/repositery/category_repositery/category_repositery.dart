import 'package:dartz/dartz.dart';
import 'package:device/domain/core/constants/error_msg.dart';
import 'package:device/domain/models/category_models/category_qurrey_model/category_qurrey_model.dart';
import 'package:device/domain/models/category_models/category_resp_model/category_resp_model.dart';

abstract class CategoryRepository {
  Future<Either<ErrorMsg, CategoryRespModel>> getCategory(
      {required CategoryQurreyModel categoryQurreyModel});
}
