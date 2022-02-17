import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/pending_items_list_entitie.dart';
import '../repositories/pending_items_list_repository.dart';

class GetPendingDocumentDetailListUseCase
    implements UseCase<PendingExpensesListEntitie, NoParams> {
  final PendingDocumentDetailListRepository repository;

  GetPendingDocumentDetailListUseCase(this.repository);

  @override
  Future<Either<Failure, PendingExpensesListEntitie>?> call(
    NoParams params,
  ) async {
    return await repository.getPendingDocumentListDetail();
  }
}
