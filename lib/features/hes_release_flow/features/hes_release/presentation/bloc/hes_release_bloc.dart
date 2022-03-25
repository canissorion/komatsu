import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'hes_release_event.dart';
part 'hes_release_state.dart';

class HesReleaseBloc extends Bloc<HesReleaseEvent, HesReleaseState> {
  HesReleaseBloc() : super(HesReleaseInitial()) {
    on<HesReleaseEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
