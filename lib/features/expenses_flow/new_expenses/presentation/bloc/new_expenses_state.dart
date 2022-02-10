part of 'new_expenses_bloc.dart';

abstract class NewExpensesState extends Equatable {
  final String? currentExpense;
  //final String? newExpense;
  final String? errorMessage;

  const NewExpensesState({this.currentExpense, this.errorMessage});
  @override
  List<Object?> get props => [currentExpense, errorMessage];
}

class Empty extends NewExpensesState {}

class Loading extends NewExpensesState {}

class Loaded extends NewExpensesState {
  final String? currentExpense;
  //final String newExpense;

  const Loaded({required this.currentExpense});

  @override
  List<Object?> get props => [currentExpense];
}

class Error extends NewExpensesState {
  final String errorMessage;

  const Error({required this.errorMessage});

  @override
  List<Object> get props => [errorMessage];
}
