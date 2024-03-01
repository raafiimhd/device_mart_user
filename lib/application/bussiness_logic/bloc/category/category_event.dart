part of 'category_bloc.dart';

@freezed
class CategoryEvent with _$CategoryEvent {
  const factory CategoryEvent.getCategoryEvent(
      {required CategoryQurreyModel categoryQurreyModel}) = GetCategoryEvent;
}
