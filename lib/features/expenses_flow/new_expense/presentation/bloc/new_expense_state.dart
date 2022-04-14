// ignore_for_file: annotate_overrides, overridden_fields

part of 'new_expense_bloc.dart';

abstract class NewExpenseState extends Equatable {
  final String? errorMessage;
  final NewExpenseEntitie? newExpense;
  final bool? mark;
  final String? selectField;

  const NewExpenseState({
    this.newExpense,
    this.errorMessage,
    this.mark,
    this.selectField,
  });

  @override
  List<Object?> get props => [errorMessage, newExpense, mark, selectField];
}

class EmptyNewExpenses extends NewExpenseState {}

class LoadingNewExpenses extends NewExpenseState {}

class LoadedNewExpenses extends NewExpenseState {
  final NewExpenseEntitie newExpense;
  final bool mark;
  final String? selectField;

  const LoadedNewExpenses({
    required this.newExpense,
    required this.mark,
    required this.selectField,
  });

  @override
  List<Object?> get props => [newExpense, mark, selectField];
}

class ErrorNewExpenses extends NewExpenseState {
  final String errorMessage;

  const ErrorNewExpenses({required this.errorMessage});

  @override
  List<Object> get props => [errorMessage];
}
