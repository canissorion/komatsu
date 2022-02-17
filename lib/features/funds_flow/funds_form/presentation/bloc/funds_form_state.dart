// ignore_for_file: annotate_overrides, overridden_fields
part of 'funds_form_bloc.dart';

abstract class FundsFormState extends Equatable {
  final String? errorMessage;
  final FundsFormEntitie? fundsForm;
  final bool? mark;
  final DateTime? date;

  const FundsFormState({
    this.errorMessage,
    this.fundsForm,
    this.mark,
    this.date,
  });

  @override
  List<Object?> get props => [errorMessage, fundsForm, mark, date];
}

class Empty extends FundsFormState {}

class Loading extends FundsFormState {}

class Loaded extends FundsFormState {
  final FundsFormEntitie fundsForm;
  final bool mark;
  final DateTime? date;
  const Loaded(
      {required this.fundsForm, required this.mark, required this.date});

  @override
  List<Object?> get props => [fundsForm, mark];
}

class Error extends FundsFormState {
  final String errorMessage;

  const Error({required this.errorMessage});

  @override
  List<Object> get props => [errorMessage];
}
