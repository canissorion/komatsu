import 'package:dartz/dartz.dart';
import 'package:kcc_mobile_app/features/pending_expenses/domain/entities/pending_items_list_entitie.dart';
import 'package:kcc_mobile_app/features/pending_expenses/domain/repositories/pending_items_list_repository.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecase.dart';

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
