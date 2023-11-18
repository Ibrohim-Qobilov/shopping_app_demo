part of 'products_bloc.dart';

abstract class ProductsEvent extends Equatable {
  const ProductsEvent();

  @override
  List<Object> get props => [];
}

class GetProducts extends ProductsEvent {
final String? sort;
  const GetProducts({ this.sort});
}

class GetProductsByCoterory extends ProductsEvent {
  const GetProductsByCoterory();
}
