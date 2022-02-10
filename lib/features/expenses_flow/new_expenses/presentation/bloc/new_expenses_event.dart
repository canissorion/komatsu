part of 'new_expenses_bloc.dart';

abstract class NewExpensesEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class ChangeItem extends NewExpensesEvent {
  final String data;

  ChangeItem(this.data);

  @override
  List<Object> get props => [data];
}
