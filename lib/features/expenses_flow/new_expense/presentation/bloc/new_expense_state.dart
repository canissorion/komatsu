part of 'new_expense_bloc.dart';

abstract class NewExpenseState extends Equatable {
  final String? errorMessage;
  final NewExpenseEntitie? newExpense;
  final bool? mark;

  const NewExpenseState({this.newExpense, this.errorMessage, this.mark});

  @override
  List<Object?> get props => [errorMessage, newExpense, mark];
}

class Emptyy extends NewExpenseState {}

class Loadingg extends NewExpenseState {}

class Loadeed extends NewExpenseState {
  final NewExpenseEntitie newExpense;
  final bool mark;

  const Loadeed({required this.newExpense, required this.mark});

  @override
  List<Object?> get props => [newExpense, mark];
}

class Errorr extends NewExpenseState {
  final String errorMessage;

  const Errorr({required this.errorMessage});

  @override
  List<Object> get props => [errorMessage];
}
