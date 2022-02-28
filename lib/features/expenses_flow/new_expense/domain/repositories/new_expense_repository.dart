import 'package:dartz/dartz.dart';
import 'package:kcc_mobile_app/features/expenses_flow/new_expense/domain/entities/new_expense_entitie.dart';

import '../../../../../core/error/failures.dart';

abstract class NewExpenseRepository {
  Future<Either<Failure, NewExpenseEntitie>>? getNewExpense();
}
