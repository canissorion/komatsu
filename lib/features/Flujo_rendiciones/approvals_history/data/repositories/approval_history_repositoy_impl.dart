import 'package:dartz/dartz.dart';
import 'package:kcc_mobile_app/core/error/exceptions.dart';
import 'package:kcc_mobile_app/core/error/failures.dart';

import '../../domain/entities/approval_history_list_entitie.dart';
import '../../domain/repositories/approval_history_repository.dart';
import '../datasources/approvals_remote_datasources.dart';

class ApprovalHistoryRepositoryImpl implements ApprovalHistoryRepository {
  final ApprovalsHistoryRemoteDataSource remoteDataSource;

  ApprovalHistoryRepositoryImpl({
    required this.remoteDataSource,
  });

  @override
  Future<Either<Failure, ApprovalsHistoryListEntitie>>?
      getApprovalsHistoryList() async {
    try {
      final approvalHistory = await remoteDataSource.getApprovalsHistoryList();
      return Right(approvalHistory);
    } on ServerException {
      return Left(ServerFailure());
    }
  }
}
