import 'package:dartz/dartz.dart';

import '../../../../core/error/exceptions.dart';
import '../../../../core/error/failures.dart';
import '../../domain/entities/detalle_documento_entities.dart';
import '../../domain/repositories/pending_items_repository.dart';
import '../datasources/pending_items_remote_datasource.dart';

class DocumentPendingApproveRepositoryImpl
    implements DocumentPendingApproveRepository {
  final DocumentPendingApproveRemoteDataSource remoteDataSource;

  DocumentPendingApproveRepositoryImpl({
    required this.remoteDataSource,
  });

  @override
  Future<Either<Failure, DocumentPendingApprove>>?
      getDocumentPendingApprove() async {
    try {
      final documentPendingApprove = await remoteDataSource.getPendingApprove();
      return Right(documentPendingApprove);
    } on ServerException {
      return Left(ServerFailure());
    }
  }
}
