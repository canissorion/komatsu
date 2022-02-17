part of 'funds_form_bloc.dart';

abstract class FundsFormEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class GetFundsFormEvent extends FundsFormEvent {}

class LoadMoreItemsEvent extends FundsFormEvent {}

class MarkEvent extends FundsFormEvent {}

class ChangeDateStartEvent extends FundsFormEvent {
  final DateTime date;

  ChangeDateStartEvent(this.date);

  @override
  List<Object> get props => [date];
}
