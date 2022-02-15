import 'package:dartz/dartz.dart';
import '../../../../../core/error/failures.dart';
import '../../../../../core/usecases/usecase.dart';
import '../entities/pending_funds_entitie.dart';

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
