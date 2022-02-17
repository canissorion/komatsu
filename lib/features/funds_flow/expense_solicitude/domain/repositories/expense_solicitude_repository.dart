import 'package:dartz/dartz.dart';
import '../../../../../core/error/failures.dart';
import '../entities/expense_solicitude_entitie.dart';

abstract class ExpenseSolicitudeRepository {
  Future<Either<Failure, ExpenseSolicitudeEntitie>>? getExpenseSolicitude();
}
