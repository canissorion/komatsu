import 'package:dartz/dartz.dart';
import 'package:kcc_mobile_app/core/error/failures.dart';
import 'package:kcc_mobile_app/core/usecases/usecase.dart';

import '../entities/approval_history_list_entitie.dart';
import '../repositories/approval_history_repository.dart';

class GetApprovalHistoryListUseCase
    implements UseCase<ApprovalsHistoryListEntitie, NoParams> {
  final ApprovalHistoryRepository repository;

  GetApprovalHistoryListUseCase(this.repository);

  @override
  Future<Either<Failure, ApprovalsHistoryListEntitie>?> call(
    NoParams params,
  ) async {
    return await repository.getApprovalsHistoryList();
  }
}
