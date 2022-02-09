import 'package:dartz/dartz.dart';
import 'package:kcc_mobile_app/core/error/exceptions.dart';
import 'package:kcc_mobile_app/core/error/failures.dart';
import 'package:kcc_mobile_app/features/Flujo_fondos/expense_solicitude/data/datasources/expense_solicitude_remote_datasource.dart';
import 'package:kcc_mobile_app/features/Flujo_fondos/expense_solicitude/domain/entities/expense_solicitude_entitie.dart';
import 'package:kcc_mobile_app/features/Flujo_fondos/expense_solicitude/domain/repositories/expense_solicitude_repository.dart';
import 'package:kcc_mobile_app/features/Flujo_rendiciones/pending_expenses/domain/entities/pending_items_list_entitie.dart';

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
