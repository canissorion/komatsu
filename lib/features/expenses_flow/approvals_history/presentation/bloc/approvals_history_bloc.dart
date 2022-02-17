import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:kcc_mobile_app/core/usecases/usecase.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../../domain/entities/approval_history_list_entitie.dart';
import '../../domain/usecases/approval_history_list_usecase.dart';

part 'approvals_history_event.dart';
part 'approvals_history_state.dart';

class ApprovalsHistoryBloc
    extends Bloc<ApprovalsHistoryEvent, ApprovalsHistoryState> {
  final GetApprovalHistoryListUseCase getApprovalHistoryListUseCase;
  ApprovalsHistoryBloc({required this.getApprovalHistoryListUseCase})
      : super(Empty()) {
    on<ApprovalsHistoryEvent>((event, emit) async {
      // TODO: implement event handler
      emit(Loading());
      final items = await getApprovalHistoryListUseCase(NoParams());
      items!.fold(
        (l) => emit(Error(errorMessage: l.toString())),
        (r) => emit(
          Loaded(
            items: r,
          ),
        ),
      );
    });
  }
}
