part of 'new_expense_bloc.dart';

abstract class NewExpenseState extends Equatable {
  const NewExpenseState();  

  @override
  List<Object> get props => [];
}
class NewExpenseInitial extends NewExpenseState {}
