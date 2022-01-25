import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../../../../core/usecases/usecase.dart';
import '../../domain/entities/pending_document_detail_entitie.dart';
import '../../domain/usecases/pending_items_usecase.dart';

part 'expense_list_event.dart';
part 'expense_list_state.dart';

class PendingExpenseBloc
    extends Bloc<PendingExpenseEvent, PendingExpenseState> {
  final GetPendingDocumentDetail getPendingDocumentDetail;
  PendingExpenseBloc({required this.getPendingDocumentDetail})
      : super(Empty()) {
    on<GetPendingExpenseEvent>((event, emit) async {
      emit(Loading());
      final pendingDocumentDetail = await getPendingDocumentDetail(NoParams());
      pendingDocumentDetail!.fold(
        (l) => emit(Error(errorMessage: l.toString())),
        (r) => emit(
          Loaded(
            pendingDocumentDetail: r,
            items: List.filled(10, 0, growable: true),
            refreshController: RefreshController(),
            startDate: DateTime.now(),
            endDate: DateTime.now(),
          ),
        ),
      );
    });

    on<LoadMoreItemsEvent>((event, emit) async {
      if (state.pendingDocumentDetail == null) return;
      final items = [...state.items!, 0];

      emit(
        Loaded(
          pendingDocumentDetail: state.pendingDocumentDetail!,
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
        if (state.pendingDocumentDetail == null) return;
        emit(
          Loaded(
            pendingDocumentDetail: state.pendingDocumentDetail!,
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
        if (state.pendingDocumentDetail == null) return;
        emit(
          Loaded(
            pendingDocumentDetail: state.pendingDocumentDetail!,
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
