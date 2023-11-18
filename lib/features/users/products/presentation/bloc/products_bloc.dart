import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:formz/formz.dart';
import 'package:shoping_app/features/users/products/data/datasources/products_datasources.dart';
import 'package:shoping_app/features/users/products/data/models/all_products_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'products_event.dart';
part 'products_state.dart';
part 'products_bloc.freezed.dart';

class ProductsBloc extends Bloc<ProductsEvent, ProductsState> {
  final ProductsDataSources repository;
  ProductsBloc(this.repository) : super(ProductsState.inital()) {
    on<GetProducts>(_getProduct);
    on<GetProductsByCoterory>(_getProductBYCotegory);
  }

  FutureOr<void> _getProduct(
    GetProducts event,
    Emitter<ProductsState> emit,
  ) async {
    try {
      emit(state.copyWith(productsStatus: FormzSubmissionStatus.inProgress));
      final data = await repository.getproducts(sort: event.sort!);

      emit(state.copyWith(
        productsData: data,
        productsStatus: FormzSubmissionStatus.success,
      ));
    } catch (ee) {
      emit(state.copyWith(productsStatus: FormzSubmissionStatus.failure));
    }
  }

  FutureOr<void> _getProductBYCotegory(
    GetProductsByCoterory event,
    Emitter<ProductsState> emit,
  ) async {
    try {
      emit(state.copyWith(
          productsByCotegoryStatus: FormzSubmissionStatus.inProgress));
      final data = await repository.getproductsByFilter();
      emit(state.copyWith(
        productsByCotegoryData: data,
        productsByCotegoryStatus: FormzSubmissionStatus.success,
      ));
    } catch (ee) {
      emit(state.copyWith(
          productsByCotegoryStatus: FormzSubmissionStatus.failure));
    }
  }
}
