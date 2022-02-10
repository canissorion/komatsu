import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../../../../../core/usecases/usecase.dart';
import '../../domain/entities/pending_funds_entitie.dart';
import '../../domain/usecases/pending_funds_list_usecase.dart';

part 'funds_list_event.dart';
part 'funds_list_state.dart';

class PendingFundsBloc extends Bloc<PendingFundsEvent, PendingFundsState> {
  //final GetPendingDocumentDetail getPendingDocumentDetail;
  final GetPendingFundsDetailListUseCase getPendingfundsDetail;

  PendingFundsBloc({
    //required this.getPendingDocumentDetail,
    required this.getPendingfundsDetail,
  }) : super(Empty()) {
    on<GetPendingFundsEvent>((event, emit) async {
      emit(Loading());
      final items = await getPendingfundsDetail(NoParams());

      items!.fold(
        (l) => emit(Error(errorMessage: l.toString())),
        (r) => emit(
          Loaded(
            //pendingDocumentDetail: state.pendingDocumentDetail!,
            items: r,
            refreshController: RefreshController(),
            startDate: DateTime.now(),
            endDate: DateTime.now(),
          ),
        ),
      );
    });

    on<LoadMoreItemsEvent>((event, emit) async {
      //if (state.pendingDocumentDetail == null) return;

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
        //if (state.pendingDocumentDetail == null) return;
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
        //if (state.pendingDocumentDetail == null) return;
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
