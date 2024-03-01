part of 'inventory_bloc.dart';

@freezed
class InventoryState with _$InventoryState {
  const factory InventoryState(
      {required bool hasError,
      required bool isLoading,
      String? message,
      InventoryRespModel? inventoryRespModel,
      SearchRespModel? searchRespModel,
      List<InventoryModel>? inventories,
      InventoryDetailsRespModel? inventoryDetailsRespModel,
      CategoryProductRespModel? categoryProductRespModel}) = _Initial;

  factory InventoryState.initial() =>
      const InventoryState(hasError: false, isLoading: false);
}
