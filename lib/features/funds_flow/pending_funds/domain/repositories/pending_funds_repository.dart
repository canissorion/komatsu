import 'package:dartz/dartz.dart';
import '../../../../../core/error/failures.dart';
import '../entities/pending_funds_entitie.dart';

abstract class PendingFundsDetailRepository {
  Future<Either<Failure, PendingFundsDetailEntitie>>? getPendingFundsDetail();
}
