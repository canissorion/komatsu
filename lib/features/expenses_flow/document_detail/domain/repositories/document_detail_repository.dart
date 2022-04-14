import 'package:dartz/dartz.dart';
import '../../../../../core/error/failures.dart';

import '../entities/document_detail_entitie.dart';

abstract class DocumentDetailRepository {
  Future<Either<Failure, DocumentDetailEntitie>>? getDocumentDetail();
}
