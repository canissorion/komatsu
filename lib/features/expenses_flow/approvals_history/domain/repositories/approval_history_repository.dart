import 'package:dartz/dartz.dart';
import 'package:kcc_mobile_app/core/error/failures.dart';

import '../entities/approval_history_list_entitie.dart';

abstract class ApprovalHistoryRepository {
  Future<Either<Failure, ApprovalsHistoryListEntitie>>?
      getApprovalsHistoryList();
}
