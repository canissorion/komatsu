import 'package:dartz/dartz.dart';
import 'package:kcc_mobile_app/features/pending_expenses/domain/entities/pending_items_list_entitie.dart';

import '../../../../core/error/exceptions.dart';
import '../../../../core/error/failures.dart';
import '../../domain/repositories/pending_items_list_repository.dart';
import '../datasources/pending_items_remote_datasource.dart';
import '../models/pending_items_list_model.dart';

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
