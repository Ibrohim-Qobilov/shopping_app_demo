// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'basket_bloc.dart';

abstract class BasketState extends Equatable {
  const BasketState();

  @override
  List<Object> get props => [];
}

class BasketInitial extends BasketState {}

class BasketLoading extends BasketState {}

class BasketLoaded extends BasketState {
  final List<UserListModel> data;
  const BasketLoaded(this.data);
}

class BasketError extends BasketState {
  final String? error;
  const BasketError(this.error);
}

class BasketNetwork extends BasketState {}
