import 'package:dartz/dartz.dart';

import '../../../../../core/error/failures.dart';
import '../../domain/entities/new_expense_entitie.dart';

abstract class NewExpenseRepository {
  Future<Either<Failure, NewExpenseEntitie>>? getNewExpense();
}
