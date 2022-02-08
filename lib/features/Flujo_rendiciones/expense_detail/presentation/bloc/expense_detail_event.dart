part of 'expense_detail_bloc.dart';

abstract class ExpenseDetailEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class GetExpenseDetailEvent extends ExpenseDetailEvent {}

class LoadMoreItemsEvent extends ExpenseDetailEvent {}

class MarkEvent extends ExpenseDetailEvent {}
