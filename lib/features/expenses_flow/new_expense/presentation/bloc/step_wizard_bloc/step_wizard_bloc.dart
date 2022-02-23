import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'step_wizard_event.dart';
part 'step_wizard_state.dart';

class StepWizardBloc extends Bloc<StepWizardEvent, StepWizardState> {
  StepWizardBloc() : super(Empty()) {
    on<InitSteper>((event, emit) {
      emit(const Loaded(stepPosition: 1));
    });
    on<ChangeNextPageStepEvent>((event, emit) {
      emit(Loaded(stepPosition: state.stepPosition! + 1));
    });
    on<ChangePreviousPageStepEvent>((event, emit) {
      emit(Loaded(stepPosition: state.stepPosition! - 1));
    });
  }
}
