import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'form_event.dart';
part 'form_state.dart';

class FormBloc extends Bloc<FormEvent, FormState> {
  FormBloc() : super(Empty()) {
    on<ChangeDrop1>((event, emit) {
      emit(Loaded(
          dropbox1: event.selectField,
          dropbox2: state.dropbox2,
          dropbox3: state.dropbox3,
          objetivo: state.objetivo));
    });
    on<ChangeDrop2>((event, emit) {
      emit(Loaded(
          dropbox1: state.dropbox1,
          dropbox2: event.selectField,
          dropbox3: state.dropbox3,
          objetivo: state.objetivo));
    });
    on<ChangeDrop3>((event, emit) {
      emit(Loaded(
          dropbox1: state.dropbox1,
          dropbox2: state.dropbox2,
          dropbox3: event.selectField,
          objetivo: state.objetivo));
    });
    on<ChangeObjetive>((event, emit) {
      emit(Loaded(
          dropbox1: state.dropbox1,
          dropbox2: state.dropbox2,
          dropbox3: state.dropbox3,
          objetivo: event.text));
    });
  }
}
