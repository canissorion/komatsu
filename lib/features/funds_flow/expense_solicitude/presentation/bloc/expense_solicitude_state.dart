// ignore_for_file: annotate_overrides, overridden_fields
part of 'expense_solicitude_bloc.dart';

abstract class ExpenseSolicitudeState extends Equatable {
  final String? errorMessage;
  final ExpenseSolicitudeEntitie? expenseSolicitude;
  final bool? mark;

  const ExpenseSolicitudeState({
    this.errorMessage,
    this.expenseSolicitude,
    this.mark,
  });

  @override
  List<Object?> get props => [errorMessage, expenseSolicitude, mark];
}

class Empty extends ExpenseSolicitudeState {}

class Loading extends ExpenseSolicitudeState {}

class Loaded extends ExpenseSolicitudeState {
  final ExpenseSolicitudeEntitie expenseSolicitude;
  final bool mark;

  const Loaded({required this.expenseSolicitude, required this.mark});

  @override
  List<Object?> get props => [expenseSolicitude, mark];
}

class Error extends ExpenseSolicitudeState {
  final String errorMessage;

  const Error({required this.errorMessage});

  @override
  List<Object> get props => [errorMessage];
}
