part of 'category_bloc.dart';

@freezed
class CategoryState with _$CategoryState {
  const factory CategoryState({
    required bool hasError,
    required bool isLoading,
    String? message,
    CategoryRespModel? categoryRespModel,
  }) = _Initial;

  factory CategoryState.initial() =>
      const CategoryState(hasError: false, isLoading: false);
}
