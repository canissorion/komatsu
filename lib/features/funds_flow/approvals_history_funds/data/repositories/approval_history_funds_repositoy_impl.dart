import 'package:dartz/dartz.dart';

import '../../../../../core/error/exceptions.dart';
import '../../../../../core/error/failures.dart';
import '../../domain/entities/approvals_history_funds_entitie.dart';
import '../../domain/repositories/approval_history_funds_repository.dart';
import '../datasources/approvals_funds_remote_datasources.dart';

class ApprovalsHistoryFundsRepositoryImpl
    implements ApprovalsHistoryFundsRepository {
  final ApprovalsHistoryFundsRemoteDataSource remoteDataSource;

  ApprovalsHistoryFundsRepositoryImpl({
    required this.remoteDataSource,
  });

  @override
  Future<Either<Failure, ApprovalsHistoryFundsEntitie>>?
      getApprovalsHistoryFunds() async {
    try {
      final approvalHisotryFunds =
          await remoteDataSource.getApprovalsHistoryFunds();
      return Right(approvalHisotryFunds);
    } on ServerException {
      return Left(ServerFailure());
    }
  }
}
