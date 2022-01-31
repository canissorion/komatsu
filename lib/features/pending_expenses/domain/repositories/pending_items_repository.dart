import 'package:dartz/dartz.dart';
import 'package:kcc_mobile_app/features/pending_expenses/domain/entities/pending_expenses_entitie.dart';

import '../../../../core/error/failures.dart';
import '../entities/pending_document_detail_entitie.dart';

abstract class PendingDocumentDetailRepository {
  Future<Either<Failure, PendingExpensesEntitie>>? getPendingDocumentDetail();
}
