import 'package:bloc/bloc.dart';
import 'package:device/domain/models/category_models/category_by_products_model/category_id_product_model/category_id_product_model.dart';
import 'package:device/domain/models/category_models/category_by_products_model/category_product_qurrey_model/category_product_qurrey_model.dart';
import 'package:device/domain/models/category_models/category_by_products_model/category_product_resp_model/category_product_resp_model.dart';
import 'package:device/domain/models/inventory_models/inventory_details_model/inventory_details_qurrey_id/inventory_details_qurrey_id.dart';
import 'package:device/domain/models/inventory_models/inventory_details_model/inventory_details_resp_model/inventory_details_resp_model.dart';
import 'package:device/domain/models/inventory_models/inventory_model/inventory_model.dart';
import 'package:device/domain/models/inventory_models/inventory_qurrrey_model/inventory_qurrey_model.dart';
import 'package:device/domain/models/inventory_models/inventory_resp_model/inventory_resp_model.dart';
import 'package:device/domain/models/search_models/search_qurrey_model/search_qurrey_model.dart';
import 'package:device/domain/models/search_models/search_resp_model/search_resp_model.dart';
import 'package:device/domain/repositery/inventory_repositery/inventory_repositery.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'inventory_event.dart';
part 'inventory_state.dart';
part 'inventory_bloc.freezed.dart';

@injectable
class InventoryBloc extends Bloc<InventoryEvent, InventoryState> {
  final InventoryRepositery inventoryRepositery;
  InventoryBloc(this.inventoryRepositery) : super(InventoryState.initial()) {
    on<GetAllProductsEvent>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      final result = await inventoryRepositery.getAllProducts(
          inventoryQurreyModel: event.inventoryQurreyModel);
      result.fold(
          (failure) => emit(state.copyWith(
              hasError: true, isLoading: false, message: failure.message)),
          (resp) => emit(state.copyWith(
              hasError: false,
              isLoading: false,
              message: resp.message,
              inventories: resp.data)));
    });

    on<SearchEvent>((event, emit) async {
      emit(state.copyWith(
        isLoading: true,
      ));
      final result = await inventoryRepositery.search(
          searchQurreyModel: event.searchQurreyModel);
      result.fold(
          (failure) => emit(state.copyWith(
              hasError: true, isLoading: false, message: failure.message)),
          (resp) => emit(state.copyWith(
              hasError: false, inventories: resp.data, isLoading: false)));
    });
    on<CategoryProductEvent>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      final result = await inventoryRepositery.categoryProduct(
          categoryProductQurreyModel: event.categoryProductQurreyModel,
          categoryIdProductModel: event.categoryIdProductModel);
      result.fold(
          (failure) => emit(state.copyWith(
                isLoading: false,
                hasError: true,
                message: failure.message,
              )),
          (resp) => emit(state.copyWith(
              isLoading: false,
              hasError: false,
              inventoryRespModel: resp,
              message: resp.message)));
    });
    on<ProductDetailsEvent>((event, emit) async {
      emit(state.copyWith(isLoading: true));

      final result = await inventoryRepositery.getAllProductsDetails(
          inventoryDetailsQurreyModel: event.inventoryDetailsQurreyModel);

      result.fold(
          (failure) => emit(state.copyWith(
              isLoading: false, hasError: true, message: failure.message)),
          (resp) => emit(state.copyWith(
              isLoading: false,
              hasError: false,
              message: resp.message,
              inventoryDetailsRespModel: resp)));
    });
  }
}
