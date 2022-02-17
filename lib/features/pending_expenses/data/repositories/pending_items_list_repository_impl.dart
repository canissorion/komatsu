import 'package:dartz/dartz.dart';

import '../../../../core/error/exceptions.dart';
import '../../../../core/error/failures.dart';
import '../../domain/entities/pending_items_list_entitie.dart';
import '../../domain/repositories/pending_items_list_repository.dart';
import '../datasources/pending_items_remote_datasource.dart';

class PendingDocumentDetailListRepositoryImpl
    implements PendingDocumentDetailListRepository {
  final PendingDocumentDetailRemoteDataSource remoteDataSource;

  PendingDocumentDetailListRepositoryImpl({
    required this.remoteDataSource,
  });

  @override
  Future<Either<Failure, PendingExpensesListEntitie>>?
      getPendingDocumentListDetail() async {
    try {
      final pendingDocumentDetailList =
          await remoteDataSource.getPendingDocumentListDetail();
      return Right(pendingDocumentDetailList);
    } on ServerException {
      return Left(ServerFailure());
    }
  }
}
