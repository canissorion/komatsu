import 'package:dartz/dartz.dart';
import '../../../../../core/error/failures.dart';
import '../entities/funds_form_entitie.dart';

abstract class FundsFormRepository {
  Future<Either<Failure, FundsFormEntitie>>? getFundsForm();
}
