import 'package:dartz/dartz.dart';

import '../../../../../core/error/exceptions.dart';
import '../../../../../core/error/failures.dart';
import '../../domain/entities/pending_funds_entitie.dart';
import '../../domain/repositories/pending_funds_repository.dart';
import '../datasources/pending_funds_remote_datasource.dart';

class PendingFundsDetailRepositoryImpl implements PendingFundsDetailRepository {
  final PendingFundsDetailRemoteDataSource remoteDataSource;

  PendingFundsDetailRepositoryImpl({
    required this.remoteDataSource,
  });

  @override
  Future<Either<Failure, PendingFundsDetailEntitie>>?
      getPendingFundsDetail() async {
    try {
      final pendingfundsDetailList =
          await remoteDataSource.getPendingFundsDetail();
      return Right(pendingfundsDetailList);
    } on ServerException {
      return Left(ServerFailure());
    }
  }
}
