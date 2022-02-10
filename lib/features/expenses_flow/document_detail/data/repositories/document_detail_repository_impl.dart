import 'package:dartz/dartz.dart';
import 'package:kcc_mobile_app/core/error/exceptions.dart';
import 'package:kcc_mobile_app/core/error/failures.dart';

import '../../domain/entities/document_detail_entitie.dart';
import '../../domain/repositories/document_detail_repository.dart';
import '../datasources/document_detail_remote_datasource.dart';

class DocumentDetailRepositoryImpl implements DocumentDetailRepository {
  final DocumentDetailRemoteDataSource remoteDataSource;

  DocumentDetailRepositoryImpl({
    required this.remoteDataSource,
  });

  @override
  Future<Either<Failure, DocumentDetailEntitie>>? getDocumentDetail() async {
    try {
      final detalleDocumento = await remoteDataSource.getDocument();
      return Right(detalleDocumento);
    } on ServerException {
      return Left(ServerFailure());
    }
  }
}
