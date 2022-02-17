part of 'step_wizard_bloc.dart';

abstract class StepWizardEvent extends Equatable {
  const StepWizardEvent();

  @override
  List<Object> get props => [];
}

class InitSteper extends StepWizardEvent {
  const InitSteper();
  @override
  List<Object> get props => [];
}

class ChangeNextPageStepEvent extends StepWizardEvent {
  const ChangeNextPageStepEvent();

  @override
  List<Object> get props => [];
}

class ChangePreviousPageStepEvent extends StepWizardEvent {
  const ChangePreviousPageStepEvent();

  @override
  List<Object> get props => [];
}
