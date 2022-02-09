part of 'expense_solicitude_bloc.dart';

abstract class ExpenseSolicitudeEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class GetExpenseSolicitudeEvent extends ExpenseSolicitudeEvent {}

class LoadMoreItemsEvent extends ExpenseSolicitudeEvent {}
