import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../entities/detalle_documento_entities.dart';

abstract class DocumentPendingApproveRepository {
  Future<Either<Failure, DocumentPendingApprove>>? getDocumentPendingApprove();
}
