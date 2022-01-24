import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../../../../core/usecases/usecase.dart';
import '../../domain/entities/detalle_documento_entities.dart';
import '../../domain/usecases/pending_items_usecase.dart';

part 'listado_solicitudes_event.dart';
part 'listado_solicitudes_state.dart';

class PendingItemsBloc extends Bloc<PendingItemsEvent, PendingItemsState> {
  final GetDocumentPendingApprove getDocumentPendingApprove;
  PendingItemsBloc({required this.getDocumentPendingApprove}) : super(Empty()) {
    on<GetPendingItemsEvent>((event, emit) async {
      emit(Loading());
      final documentPendingApprove =
          await getDocumentPendingApprove(NoParams());
      documentPendingApprove!.fold(
        (l) => emit(Error(errorMessage: l.toString())),
        (r) => emit(
          Loaded(
            documentPendingApprove: r,
            items: List.filled(10, 0, growable: true),
            refreshController: RefreshController(),
            startDate: DateTime.now(),
            endDate: DateTime.now(),
          ),
        ),
      );
    });

    on<LoadMoreItemsEvent>((event, emit) async {
      if (state.documentPendingApprove == null) return;
      final items = [...state.items!, 0];

      emit(
        Loaded(
          documentPendingApprove: state.documentPendingApprove!,
          items: items,
          refreshController: state.refreshController!,
          startDate: state.startDate!,
          endDate: state.endDate!,
        ),
      );
      state.refreshController!.loadComplete();
    });

    on<ChangeDateStartEvent>(
      (event, emit) async {
        if (state.documentPendingApprove == null) return;
        emit(
          Loaded(
            documentPendingApprove: state.documentPendingApprove!,
            refreshController: state.refreshController!,
            items: state.items!,
            startDate: event.date,
            endDate: state.endDate!,
          ),
        );
      },
    );

    on<ChangeDateEndEvent>(
      (event, emit) async {
        if (state.documentPendingApprove == null) return;
        emit(
          Loaded(
            documentPendingApprove: state.documentPendingApprove!,
            refreshController: state.refreshController!,
            items: state.items!,
            startDate: state.startDate!,
            endDate: event.date,
          ),
        );
      },
    );
  }
}
