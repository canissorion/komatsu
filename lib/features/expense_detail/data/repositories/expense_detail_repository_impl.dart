import 'package:dartz/dartz.dart';
import '../datasources/expense_detail_remote_datasource.dart';
import '../../domain/entities/expense_detail_entitie.dart';
import '../../domain/repositories/expense_detail_repository.dart';
import '../../../../core/error/exceptions.dart';

import '../../../../core/error/failures.dart';

class ExpenseDetailRepositoryImpl implements ExpenseDetailRepository {
  final ExpenseDetailRemoteDataSource remoteDataSource;

  ExpenseDetailRepositoryImpl({
    required this.remoteDataSource,
  });

  @override
  Future<Either<Failure, ExpenseDetailEntitie>>? getExpenseDetail() async {
    try {
      final expenseDetail = await remoteDataSource.getExpenseDetail();
      return Right(expenseDetail);
    } on ServerException {
      return Left(ServerFailure());
    }
  }
}
