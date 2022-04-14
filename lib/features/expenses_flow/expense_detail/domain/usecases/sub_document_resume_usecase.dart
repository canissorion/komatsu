// ignore_for_file: directives_ordering

import 'package:dartz/dartz.dart';
import '../../../../../core/error/failures.dart';
import '../../../../../core/usecases/usecase.dart';
import '../entities/sub_document_resume_list_entitie.dart';
import '../repositories/sub_document_resume_repository.dart';

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
