import 'package:dartz/dartz.dart';
import 'package:kcc_mobile_app/core/error/failures.dart';

import '../entities/expense_detail_entitie.dart';

abstract class ExpenseDetailRepository {
  Future<Either<Failure, ExpenseDetailEntitie>>? getExpenseDetail();
}
