import 'package:dartz/dartz.dart';
import 'package:kcc_mobile_app/core/error/failures.dart';
import '../entities/sub_document_resume_list_entitie.dart';

import '../entities/expense_detail_entitie.dart';

abstract class SubDocumentResumeRepository {
  Future<Either<Failure, SubDocumentResumeListEntitie>>?
      getSubDocumentResumeList();
}
