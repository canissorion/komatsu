import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'ver_documento_event.dart';
part 'ver_documento_state.dart';

class VerDocumentoBloc extends Bloc<VerDocumentoEvent, VerDocumentoState> {
  VerDocumentoBloc() : super(VerDocumentoInitial()) {
    on<VerDocumentoEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
