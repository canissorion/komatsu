import 'package:dartz/dartz.dart';

import '../../../../../core/error/failures.dart';
import '../../../../../core/usecases/usecase.dart';
import '../entities/new_expense_entitie.dart';
import '../repositories/new_expense_repository.dart';

class GetNewExpenseUseCase implements UseCase<NewExpenseEntitie, NoParams> {
  final NewExpenseRepository repository;

  GetNewExpenseUseCase(this.repository);

  @override
  Future<Either<Failure, NewExpenseEntitie>?> call(
    NoParams params,
  ) async {
    return await repository.getNewExpense();
  }
}
