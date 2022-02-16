import 'package:dartz/dartz.dart';

import '../../../../../core/error/failures.dart';
import '../entities/approvals_history_funds_entitie.dart';

abstract class ApprovalsHistoryFundsRepository {
  Future<Either<Failure, ApprovalsHistoryFundsEntitie>>?
      getApprovalsHistoryFunds();
}
