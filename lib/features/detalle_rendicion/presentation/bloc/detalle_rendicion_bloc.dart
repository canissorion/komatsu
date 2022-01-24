import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import '../../../../core/usecases/usecase.dart';
import '../../domain/entities/detalle_rendicion_entitie.dart';
import '../../domain/usecases/detalle_rendicion_usecase.dart';

part 'detalle_rendicion_event.dart';
part 'detalle_rendicion_state.dart';

class DetalleRendicionBloc
    extends Bloc<DetalleRendicionEvent, DetalleRendicionState> {
  final GetDetalleRendicion getDetalleRendicion;
  DetalleRendicionBloc({required this.getDetalleRendicion}) : super(Empty()) {
    on<GetDetalleRendicionEvent>((event, emit) async {
      emit(Loading());
      final detalleRendicion = await getDetalleRendicion(NoParams());
      detalleRendicion!.fold(
        (l) => emit(Error(errorMessage: l.toString())),
        (r) => emit(
          Loaded(
            detalleRendicion: r,
            refreshController: RefreshController(),
            items: List.filled(4, 0, growable: true),
            mark: false,
          ),
        ),
      );
    });

    on<LoadMoreItemsEvent>((event, emit) async {
      if (state.detalleRendicion == null) return;
      final items = [...state.items!, 0];

      emit(
        Loaded(
          detalleRendicion: state.detalleRendicion!,
          items: items,
          refreshController: state.refreshController!,
          mark: state.mark!,
        ),
      );
      state.refreshController!.loadComplete();
    });

    on<MarkEvent>((event, emit) async {
      if (state.detalleRendicion == null) return;
      emit(Loaded(
        detalleRendicion: state.detalleRendicion!,
        items: state.items!,
        refreshController: state.refreshController!,
        mark: !state.mark!,
      ));
    });
  }
}
