import 'dart:async';
import 'dart:io';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:shoping_app/features/users/products/data/datasources/products_datasources.dart';
import 'package:shoping_app/features/users/products/data/models/all_products_model.dart';

part 'products_event.dart';
part 'products_state.dart';

class ProductsBloc extends Bloc<ProductsEvent, ProductsState> {
  ProductsDataSources repository;
  ProductsBloc(this.repository) : super(ProductsInitial()) {
    on<GetProducts>(_getProduct);
    on<GetProductsByCoterory>(_getProductBYCotegory);
  }

  FutureOr<void> _getProduct(event, emit) async {
    try {
      emit(ProductsLoading());

      final mList = await repository.getproducts();

      emit(ProductsLoaded(mList));
    } on SocketException {
      emit(ProductsNetwork());
    } catch (ee) {
      emit(ProductsError());
    }
  }

  FutureOr<void> _getProductBYCotegory(
      GetProductsByCoterory event, emit) async {
    try {
      emit(ProductsLoading());

      final mList = await repository.getproductsByFilter();

      emit(ProductsByCotegoryLoaded(mList));
    } on SocketException {
      emit(ProductsNetwork());
    } catch (ee) {
      emit(ProductsError());
    }
  }
}
