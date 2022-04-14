import 'package:dartz/dartz.dart';

import '../../../../../core/error/failures.dart';
import '../entities/sub_document_resume_list_entitie.dart';

abstract class SubDocumentResumeRepository {
  Future<Either<Failure, SubDocumentResumeListEntitie>>?
      getSubDocumentResumeList();
}
