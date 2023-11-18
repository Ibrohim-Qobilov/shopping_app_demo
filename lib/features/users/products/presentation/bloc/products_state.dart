part of 'products_bloc.dart';

@freezed
class ProductsState with _$ProductsState {
  factory ProductsState({
    required List<AllProductsModel> productsData,
    required FormzSubmissionStatus productsStatus,
    required List<String> productsByCotegoryData,
    required FormzSubmissionStatus productsByCotegoryStatus,
  }) = _ProductsState;
  factory ProductsState.inital() => ProductsState(
        productsData: List<AllProductsModel>.empty(),
        productsStatus: FormzSubmissionStatus.initial,
        productsByCotegoryData: List<String>.empty(),
        productsByCotegoryStatus: FormzSubmissionStatus.initial,
      );
}
