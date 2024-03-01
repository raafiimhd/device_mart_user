part of 'inventory_bloc.dart';

@freezed
class InventoryEvent with _$InventoryEvent {
  const factory InventoryEvent.getAllProductsEvent(
          {required InventoryQurreyModel inventoryQurreyModel}) =
      GetAllProductsEvent;
  const factory InventoryEvent.searchEvent(
      {required SearchQurreyModel searchQurreyModel}) = SearchEvent;
  const factory InventoryEvent.productDetailsEvent(
          {required InventoryDetailsQurreyModel inventoryDetailsQurreyModel}) =
      ProductDetailsEvent;
  const factory InventoryEvent.categoryProduct(
          {required CategoryProductQurreyModel categoryProductQurreyModel,
          required CategoryIdProductModel categoryIdProductModel}) =
      CategoryProductEvent;
}
