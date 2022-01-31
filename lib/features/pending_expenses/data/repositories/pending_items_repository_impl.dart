import 'package:dartz/dartz.dart';

import '../../../../core/error/exceptions.dart';
import '../../../../core/error/failures.dart';
import '../../domain/repositories/pending_items_repository.dart';
import '../datasources/pending_items_remote_datasource.dart';
import '../models/pending_expenses_model.dart';

class PendingDocumentDetailRepositoryImpl
    implements PendingDocumentDetailRepository {
  final PendingDocumentDetailRemoteDataSource remoteDataSource;

  PendingDocumentDetailRepositoryImpl({
    required this.remoteDataSource,
  });

  @override
  Future<Either<Failure, PendingExpensesModel>>?
      getPendingDocumentDetail() async {
    try {
      final pendingDocumentDetail = await remoteDataSource.getPendingApprove();
      return Right(pendingDocumentDetail);
    } on ServerException {
      return Left(ServerFailure());
    }
  }
}
