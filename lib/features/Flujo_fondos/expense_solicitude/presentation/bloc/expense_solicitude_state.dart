// ignore_for_file: annotate_overrides, overridden_fields
part of 'expense_solicitude_bloc.dart';

abstract class ExpenseSolicitudeState extends Equatable {
  final String? errorMessage;
  final ExpenseSolicitudeEntitie? expenseSolicitude;

  const ExpenseSolicitudeState({
    this.errorMessage,
    this.expenseSolicitude,
  });

  @override
  List<Object?> get props => [errorMessage, expenseSolicitude];
}

class Empty extends ExpenseSolicitudeState {}

class Loading extends ExpenseSolicitudeState {}

class Loaded extends ExpenseSolicitudeState {
  final ExpenseSolicitudeEntitie expenseSolicitude;

  const Loaded({
    required this.expenseSolicitude,
  });

  @override
  List<Object?> get props => [expenseSolicitude];
}

class Error extends ExpenseSolicitudeState {
  final String errorMessage;

  const Error({required this.errorMessage});

  @override
  List<Object> get props => [errorMessage];
}
