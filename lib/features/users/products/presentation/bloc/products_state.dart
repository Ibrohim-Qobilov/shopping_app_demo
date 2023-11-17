part of 'products_bloc.dart';

abstract class ProductsState extends Equatable {
  const ProductsState();

  @override
  List<Object> get props => [];
}

class ProductsInitial extends ProductsState {}

class ProductsLoading extends ProductsState {}

class ProductsLoaded extends ProductsState {
  final List<AllProductsModel> data;
  const ProductsLoaded(this.data);
}

class ProductsByCotegoryLoaded extends ProductsState {
  final List<String> data;
  const ProductsByCotegoryLoaded(this.data);
}

class ProductsError extends ProductsState {}

class ProductsNetwork extends ProductsState {}
