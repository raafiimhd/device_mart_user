import 'package:dartz/dartz.dart';
import 'package:device/domain/core/constants/error_msg.dart';
import 'package:device/domain/models/category_models/category_by_products_model/category_id_product_model/category_id_product_model.dart';
import 'package:device/domain/models/category_models/category_by_products_model/category_product_qurrey_model/category_product_qurrey_model.dart';
import 'package:device/domain/models/inventory_models/inventory_details_model/inventory_details_qurrey_id/inventory_details_qurrey_id.dart';
import 'package:device/domain/models/inventory_models/inventory_details_model/inventory_details_resp_model/inventory_details_resp_model.dart';
import 'package:device/domain/models/inventory_models/inventory_qurrrey_model/inventory_qurrey_model.dart';
import 'package:device/domain/models/inventory_models/inventory_resp_model/inventory_resp_model.dart';
import 'package:device/domain/models/search_models/search_qurrey_model/search_qurrey_model.dart';
import 'package:device/domain/models/search_models/search_resp_model/search_resp_model.dart';

abstract class InventoryRepositery {
  Future<Either<ErrorMsg, InventoryRespModel>> getAllProducts(
      {required InventoryQurreyModel inventoryQurreyModel});
  Future<Either<ErrorMsg, SearchRespModel>> search(
      {required SearchQurreyModel searchQurreyModel});

  Future<Either<ErrorMsg, InventoryDetailsRespModel>> getAllProductsDetails(
      {required InventoryDetailsQurreyModel inventoryDetailsQurreyModel});

  Future<Either<ErrorMsg, InventoryRespModel>> categoryProduct(
      {required CategoryProductQurreyModel categoryProductQurreyModel,
      required CategoryIdProductModel categoryIdProductModel});
}
