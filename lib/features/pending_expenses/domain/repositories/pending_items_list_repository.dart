import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../entities/pending_items_list_entitie.dart';

abstract class PendingDocumentDetailListRepository {
  Future<Either<Failure, PendingExpensesListEntitie>>?
      getPendingDocumentListDetail();
}
