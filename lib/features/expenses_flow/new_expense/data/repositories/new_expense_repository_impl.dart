import 'package:dartz/dartz.dart';

import '../../../../../core/error/exceptions.dart';
import '../../../../../core/error/failures.dart';
import '../../domain/entities/new_expense_entitie.dart';
import '../../domain/repositories/new_expense_repository.dart';
import '../datasources/new_expense_remote_datasource.dart';

class NewExpenseRepositoryImpl implements NewExpenseRepository {
  final NewExpenseRemoteDataSource remoteDataSource;

  NewExpenseRepositoryImpl({
    required this.remoteDataSource,
  });

  @override
  Future<Either<Failure, NewExpenseEntitie>>? getNewExpense() async {
    try {
      final newExpense = await remoteDataSource.getNewExpense();
      return Right(newExpense);
    } on ServerException {
      return Left(ServerFailure());
    }
  }
}
