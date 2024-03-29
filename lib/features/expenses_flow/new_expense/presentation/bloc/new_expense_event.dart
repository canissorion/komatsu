part of 'new_expense_bloc.dart';

abstract class NewExpenseEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class GetNewExpenseEvent extends NewExpenseEvent {}

class LoadMoreItemsEvent extends NewExpenseEvent {}

class MarkEvent extends NewExpenseEvent {}

class ChangeSelectFieldData extends NewExpenseEvent {
  final String selectField;

  ChangeSelectFieldData(this.selectField);

  @override
  List<Object> get props => [selectField];
}
