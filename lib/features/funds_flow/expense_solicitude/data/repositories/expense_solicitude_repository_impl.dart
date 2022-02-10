import 'package:dartz/dartz.dart';

import '../../../../../core/error/exceptions.dart';
import '../../../../../core/error/failures.dart';
import '../../../../funds_flow/expense_solicitude/domain/repositories/expense_solicitude_repository.dart';
import '../../domain/entities/expense_solicitude_entitie.dart';
import '../datasources/expense_solicitude_remote_datasource.dart';

class ExpenseSolicitudeRepositoryImpl implements ExpenseSolicitudeRepository {
  final ExpenseSolicitudeRemoteDataSource remoteDataSource;

  ExpenseSolicitudeRepositoryImpl({
    required this.remoteDataSource,
  });

  @override
  Future<Either<Failure, ExpenseSolicitudeEntitie>>?
      getExpenseSolicitude() async {
    try {
      final expenseSolicitude = await remoteDataSource.getExpenseSolicitude();
      return Right(expenseSolicitude);
    } on ServerException {
      return Left(ServerFailure());
    }
  }
}
