import 'package:dartz/dartz.dart';
import 'package:kcc_mobile_app/features/expense_detail/domain/entities/sub_document_resume_list_entitie.dart';

import '../../../../core/error/failures.dart';
import '../entities/expense_detail_entitie.dart';

abstract class SubDocumentResumeRepository {
  Future<Either<Failure, SubDocumentResumeListEntitie>>?
      getSubDocumentResumeList();
}
