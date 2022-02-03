import 'package:dartz/dartz.dart';
import 'package:kcc_mobile_app/features/approvalsHistory/data/datasources/approvals_remote_datasources.dart';

import '../../domain/repositories/approval_history_repository.dart';
import '../../domain/entities/approval_history_list_entitie.dart';

import '../../../../core/error/exceptions.dart';

import '../../../../core/error/failures.dart';

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
