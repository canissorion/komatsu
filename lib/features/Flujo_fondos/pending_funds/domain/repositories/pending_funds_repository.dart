import 'package:dartz/dartz.dart';
import 'package:kcc_mobile_app/core/error/failures.dart';
import 'package:kcc_mobile_app/features/Flujo_fondos/pending_funds/domain/entities/pending_funds_entitie.dart';

abstract class PendingFundsDetailRepository {
  Future<Either<Failure, PendingFundsDetailEntitie>>? getPendingFundsDetail();
}
