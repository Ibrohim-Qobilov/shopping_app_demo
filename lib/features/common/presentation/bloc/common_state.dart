part of 'common_bloc.dart';

abstract class CommonState extends Equatable {
  const CommonState();  

  @override
  List<Object> get props => [];
}
class CommonInitial extends CommonState {}
