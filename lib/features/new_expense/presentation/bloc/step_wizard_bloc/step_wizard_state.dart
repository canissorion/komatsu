part of 'step_wizard_bloc.dart';

abstract class StepWizardState extends Equatable {
  final int? stepPosition;
  const StepWizardState({this.stepPosition});

  @override
  List<Object?> get props => [stepPosition];
}

class Empty extends StepWizardState {}

class Loading extends StepWizardState {}

class Loaded extends StepWizardState {
  final int stepPosition;
  const Loaded({required this.stepPosition});

  @override
  List<Object?> get props => [stepPosition];
}

class Error extends StepWizardState {
  final String errorMessage;

  const Error({required this.errorMessage});

  @override
  List<Object> get props => [errorMessage];
}
