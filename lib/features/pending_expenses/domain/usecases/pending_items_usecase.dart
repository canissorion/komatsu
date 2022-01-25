import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/pending_document_detail_entitie.dart';
import '../repositories/pending_items_repository.dart';

class GetPendingDocumentDetail
    implements UseCase<PendingDocumentDetailEntitie, NoParams> {
  final PendingDocumentDetailRepository repository;

  GetPendingDocumentDetail(this.repository);

  @override
  Future<Either<Failure, PendingDocumentDetailEntitie>?> call(
    NoParams params,
  ) async {
    return await repository.getPendingDocumentDetail();
  }
}
