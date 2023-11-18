import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:shoping_app/features/admin/basket/data/datasources/basket_datasources.dart';
import 'package:shoping_app/features/admin/basket/data/models/user_model.dart';

part 'basket_event.dart';
part 'basket_state.dart';

class BasketBloc extends Bloc<BasketEvent, BasketState> {
  final BarketDataSources repository;
  BasketBloc(this.repository) : super(BasketInitial()) {
    on<GetUsers>(_getUsers);
  }
  FutureOr<void> _getUsers(event, emit) async {
    try {
      emit(BasketLoading());

      final mList = await repository.getUsers();

      emit(BasketLoaded(mList));
    } on SocketException {
      emit(BasketNetwork());
    } catch (ee) {
      emit(const BasketError(''));
    }
  }
}
