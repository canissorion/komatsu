import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/detalle_documento_entities.dart';
import '../repositories/pending_items_repository.dart';

class GetDocumentPendingApprove
    implements UseCase<DocumentPendingApprove, NoParams> {
  final DocumentPendingApproveRepository repository;

  GetDocumentPendingApprove(this.repository);

  @override
  Future<Either<Failure, DocumentPendingApprove>?> call(NoParams params) async {
    return await repository.getDocumentPendingApprove();
  }
}
