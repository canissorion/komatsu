import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'listado_solicitudes_event.dart';
part 'listado_solicitudes_state.dart';

class ListadoSolicitudesBloc
    extends Bloc<ListadoSolicitudesEvent, ListadoSolicitudesState> {
  ListadoSolicitudesBloc() : super(ListadoSolicitudesInitial()) {
    on<ListadoSolicitudesEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
