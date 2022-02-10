import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import '../../../../../core/usecases/usecase.dart';

import '../../domain/entities/approvals_history_funds_entitie.dart';
import '../../domain/usecases/approval_history_funds_usecase.dart';

part 'approvals_funds_event.dart';
part 'approvals_funds_state.dart';

class ApprovalsFundsBloc
    extends Bloc<ApprovalsFundsEvent, ApprovalsFundsState> {
  final GetApprovalsHistoryFundsUseCase getApprovalHistoryFundsUseCase;
  ApprovalsFundsBloc({required this.getApprovalHistoryFundsUseCase})
      : super(Empty()) {
    on<ApprovalsFundsEvent>((event, emit) async {
      emit(Loading());
      final items = await getApprovalHistoryFundsUseCase(NoParams());
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
