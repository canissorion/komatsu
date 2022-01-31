import 'package:dartz/dartz.dart';
import 'package:kcc_mobile_app/features/pending_expenses/domain/entities/pending_expenses_entitie.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/pending_document_detail_entitie.dart';
import '../repositories/pending_items_repository.dart';

class GetPendingDocumentDetail
    implements UseCase<PendingExpensesEntitie, NoParams> {
  final PendingDocumentDetailRepository repository;

  GetPendingDocumentDetail(this.repository);

  @override
  Future<Either<Failure, PendingExpensesEntitie>?> call(
    NoParams params,
  ) async {
    return await repository.getPendingDocumentDetail();
  }
}
