import 'package:bloc/bloc.dart';
import 'package:device/domain/models/category_models/category_qurrey_model/category_qurrey_model.dart';
import 'package:device/domain/models/category_models/category_resp_model/category_resp_model.dart';
import 'package:device/domain/repositery/category_repositery/category_repositery.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'category_event.dart';
part 'category_state.dart';
part 'category_bloc.freezed.dart';

@injectable
class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  final CategoryRepository categoryRepository;
  CategoryBloc(this.categoryRepository) : super(CategoryState.initial()) {
    on<GetCategoryEvent>((event, emit) async {
      emit(state.copyWith(
        isLoading: true,
      ));
      final result = await categoryRepository.getCategory(
          categoryQurreyModel: event.categoryQurreyModel);
      result.fold(
          (failure) => emit(state.copyWith(
              hasError: true, isLoading: false, message: failure.message)),
          (resp) => emit(state.copyWith(
              hasError: false,
              isLoading: false,
              categoryRespModel: resp,
              message: resp.message)));
    });
  }
}
