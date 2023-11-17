part of 'products_bloc.dart';

abstract class ProductsEvent extends Equatable {
  const ProductsEvent();

  @override
  List<Object> get props => [];
}

class GetProducts extends ProductsEvent {
  const GetProducts();
}

class GetProductsByCoterory extends ProductsEvent {
  const GetProductsByCoterory();
}
