import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../../core/usecases/usecase.dart';
import '../../domain/entities/detalle_documento_entitie.dart';
import '../../domain/usecases/detalle_documento_usecase.dart';

part 'detalle_documento_event.dart';
part 'detalle_documento_state.dart';

class DetalleDocumentoBloc
    extends Bloc<DetalleDocumentoEvent, DetalleDocumentoState> {
  final GetDetalleDocumento getDetalleDocumento;
  DetalleDocumentoBloc({required this.getDetalleDocumento}) : super(Empty()) {
    on<GetDetalleDocumentoEvent>((event, emit) async {
      emit(Loading());
      final detalleDocumento = await getDetalleDocumento(NoParams());
      detalleDocumento!.fold(
        (l) => emit(Error(errorMessage: l.toString())),
        (r) => emit(Loaded(detalleDocumento: r)),
      );
    });
  }
}
