import 'package:dartz/dartz.dart';
import 'package:kcc_mobile_app/core/error/failures.dart';
import 'package:kcc_mobile_app/core/usecases/usecase.dart';
import 'package:kcc_mobile_app/features/Flujo_fondos/pending_funds/domain/entities/pending_funds_entitie.dart';

import '../repositories/pending_funds_repository.dart';

class GetPendingFundsDetailListUseCase
    implements UseCase<PendingFundsDetailEntitie, NoParams> {
  final PendingFundsDetailRepository repository;

  GetPendingFundsDetailListUseCase(this.repository);

  @override
  Future<Either<Failure, PendingFundsDetailEntitie>?> call(
    NoParams params,
  ) async {
    return await repository.getPendingFundsDetail();
  }
}
