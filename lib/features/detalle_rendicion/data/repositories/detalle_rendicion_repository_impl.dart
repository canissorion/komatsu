import 'package:dartz/dartz.dart';

import '../../../../core/error/exceptions.dart';
import '../../../../core/error/failures.dart';
import '../../domain/entities/detalle_rendicion_entitie.dart';
import '../../domain/repositories/detalle_rendicion_repository.dart';
import '../datasources/detalle_rendicion_remote_datasource.dart';

class DetalleRendicionRepositoryImpl implements DetalleRendicionRepository {
  final DetalleRendicionRemoteDataSource remoteDataSource;

  DetalleRendicionRepositoryImpl({
    required this.remoteDataSource,
  });

  @override
  Future<Either<Failure, DetalleRendicionEntitie>>?
      getDetalleRendicion() async {
    try {
      final detallerendicion = await remoteDataSource.getDetalleRendicion();
      return Right(detallerendicion);
    } on ServerException {
      return Left(ServerFailure());
    }
  }
}
