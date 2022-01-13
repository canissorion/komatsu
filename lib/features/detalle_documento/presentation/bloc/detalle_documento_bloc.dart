import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'detalle_documento_event.dart';
part 'detalle_documento_state.dart';

class DetalleDocumentoBloc
    extends Bloc<DetalleDocumentoEvent, DetalleDocumentoState> {
  DetalleDocumentoBloc() : super(DetalleDocumentoInitial()) {
    on<DetalleDocumentoEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
