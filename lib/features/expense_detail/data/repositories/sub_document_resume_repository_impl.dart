import 'package:dartz/dartz.dart';

import '../../../../core/error/exceptions.dart';
import '../../../../core/error/failures.dart';
import '../../domain/entities/sub_document_resume_list_entitie.dart';
import '../../domain/repositories/sub_document_resume_repository.dart';
import '../datasources/expense_detail_remote_datasource.dart';

class SubDocumentResumeRepositoryImpl implements SubDocumentResumeRepository {
  final ExpenseDetailRemoteDataSource remoteDataSource;

  SubDocumentResumeRepositoryImpl({
    required this.remoteDataSource,
  });

  @override
  Future<Either<Failure, SubDocumentResumeListEntitie>>?
      getSubDocumentResumeList() async {
    try {
      final expenseDetail = await remoteDataSource.getSubDocumentResumeList();
      return Right(expenseDetail);
    } on ServerException {
      return Left(ServerFailure());
    }
  }
}
