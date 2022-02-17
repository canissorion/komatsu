import 'package:dartz/dartz.dart';
import 'package:kcc_mobile_app/core/error/failures.dart';
import 'package:kcc_mobile_app/core/usecases/usecase.dart';

import '../entities/document_detail_entitie.dart';
import '../repositories/document_detail_repository.dart';

class GetDocumentDetail implements UseCase<DocumentDetailEntitie, NoParams> {
  final DocumentDetailRepository repository;

  GetDocumentDetail(this.repository);

  @override
  Future<Either<Failure, DocumentDetailEntitie>?> call(NoParams params) async {
    return await repository.getDocumentDetail();
  }
}
