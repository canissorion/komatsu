import 'package:dartz/dartz.dart';

import '../../../../../core/error/failures.dart';
import '../../../../../core/usecases/usecase.dart';
import '../entities/approvals_history_funds_entitie.dart';
import '../repositories/approval_history_funds_repository.dart';

class GetApprovalsHistoryFundsUseCase
    implements UseCase<ApprovalsHistoryFundsEntitie, NoParams> {
  final ApprovalsHistoryFundsRepository repository;

  GetApprovalsHistoryFundsUseCase(this.repository);

  @override
  Future<Either<Failure, ApprovalsHistoryFundsEntitie>?> call(
    NoParams params,
  ) async {
    return await repository.getApprovalsHistoryFunds();
  }
}
