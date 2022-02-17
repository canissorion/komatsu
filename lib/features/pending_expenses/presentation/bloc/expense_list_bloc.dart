import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../../../../core/usecases/usecase.dart';
import '../../domain/entities/pending_expenses_entitie.dart';
import '../../domain/entities/pending_items_list_entitie.dart';
import '../../domain/usecases/pending_items_list_usecase.dart';

part 'expense_list_event.dart';
part 'expense_list_state.dart';

class PendingExpenseBloc
    extends Bloc<PendingExpenseEvent, PendingExpenseState> {
  final GetPendingDocumentDetailListUseCase getPendingDocumentListDetail;

  PendingExpenseBloc({
    required this.getPendingDocumentListDetail,
  }) : super(Empty()) {
    on<GetPendingExpenseEvent>((event, emit) async {
      emit(Loading());

      final items = await getPendingDocumentListDetail(NoParams());
      items!.fold(
        (l) => emit(Error(errorMessage: l.toString())),
        (r) => emit(
          Loaded(
            items: r,
            refreshController: RefreshController(),
            startDate: DateTime.now(),
            endDate: DateTime.now(),
          ),
        ),
      );
    });

    on<LoadMoreItemsEvent>((event, emit) async {
      if (state.pendingDocumentDetail == null) return;

      emit(
        Loaded(
          items: state.items,
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
            refreshController: state.refreshController!,
            items: state.items,
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
            refreshController: state.refreshController!,
            items: state.items,
            startDate: state.startDate!,
            endDate: event.date,
          ),
        );
      },
    );
  }
}
