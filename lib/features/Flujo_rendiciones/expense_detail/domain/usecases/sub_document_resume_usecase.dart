import 'package:dartz/dartz.dart';
import 'package:kcc_mobile_app/core/error/failures.dart';
import 'package:kcc_mobile_app/core/usecases/usecase.dart';
import '../entities/sub_document_resume_list_entitie.dart';
import '../repositories/sub_document_resume_repository.dart';

import '../entities/expense_detail_entitie.dart';
import '../repositories/expense_detail_repository.dart';

class GetSubDocumentResumeUseCase
    implements UseCase<SubDocumentResumeListEntitie, NoParams> {
  final SubDocumentResumeRepository repository;

  GetSubDocumentResumeUseCase(this.repository);

  @override
  Future<Either<Failure, SubDocumentResumeListEntitie>?> call(
    NoParams params,
  ) async {
    return await repository.getSubDocumentResumeList();
  }
}
