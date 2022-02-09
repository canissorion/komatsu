import 'package:dartz/dartz.dart';
import 'package:kcc_mobile_app/features/Flujo_fondos/approvals_history_funds/domain/entities/approvals_history_funds_entitie.dart';
import '../../../../../core/error/failures.dart';

abstract class ApprovalsHistoryFundsRepository {
  Future<Either<Failure, ApprovalsHistoryFundsEntitie>>?
      getApprovalsHistoryFunds();
}
