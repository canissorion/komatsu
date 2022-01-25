import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/expense_detail_entitie.dart';
import '../repositories/expense_detail_repository.dart';

class GetExpenseDetail
    implements UseCase<ExpenseDetailEntitie, NoParams> {
  final ExpenseDetailRepository repository;

  GetExpenseDetail(this.repository);

  @override
  Future<Either<Failure, ExpenseDetailEntitie>?> call(
    NoParams params,
  ) async {
    return await repository.getExpenseDetail();
  }
}
