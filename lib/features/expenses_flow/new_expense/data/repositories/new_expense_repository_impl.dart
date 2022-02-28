import 'package:dartz/dartz.dart';
import 'package:kcc_mobile_app/features/expenses_flow/new_expense/data/datasources/new_expense_remote_datasource.dart';
import 'package:kcc_mobile_app/features/expenses_flow/new_expense/domain/entities/new_expense_entitie.dart';
import 'package:kcc_mobile_app/features/expenses_flow/new_expense/domain/repositories/new_expense_repository.dart';

import '../../../../../core/error/exceptions.dart';
import '../../../../../core/error/failures.dart';

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
