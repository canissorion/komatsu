import 'package:dartz/dartz.dart';
import '../../../../core/error/exceptions.dart';

import '../../../../core/error/failures.dart';
import '../../domain/entities/detalle_documento_entitie.dart';
import '../../domain/repositories/detalle_documento_repository.dart';
import '../datasources/detalle_documento_remote_datasource.dart';

class DetalleDocumentoRepositoryImpl implements DetalleDocumentoRepository {
  final DetalleDocumentoRemoteDataSource remoteDataSource;

  DetalleDocumentoRepositoryImpl({
    required this.remoteDataSource,
  });

  @override
  Future<Either<Failure, DetalleDocumento>>? getDetalleDocumento() async {
    try {
      final detalleDocumento = await remoteDataSource.getDocumento();
      return Right(detalleDocumento);
    } on ServerException {
      return Left(ServerFailure());
    }
  }
}
