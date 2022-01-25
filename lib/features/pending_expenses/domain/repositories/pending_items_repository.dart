import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../entities/pending_document_detail_entitie.dart';

abstract class PendingDocumentDetailRepository {
  Future<Either<Failure, PendingDocumentDetailEntitie>>?
      getPendingDocumentDetail();
}
