part of 'expense_list_bloc.dart';

abstract class PendingExpenseEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class GetPendingExpenseEvent extends PendingExpenseEvent {}

class LoadMoreItemsEvent extends PendingExpenseEvent {}

class ChangeDateStartEvent extends PendingExpenseEvent {
  final DateTime date;

  ChangeDateStartEvent(this.date);

  @override
  List<Object> get props => [date];
}

class ChangeDateEndEvent extends PendingExpenseEvent {
  final DateTime date;

  ChangeDateEndEvent(this.date);

  @override
  List<Object> get props => [date];
}
