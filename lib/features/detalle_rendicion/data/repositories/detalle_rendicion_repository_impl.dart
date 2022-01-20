import 'package:dartz/dartz.dart';
import 'package:kcc_mobile_app/features/detalle_rendicion/data/datasources/detalle_rendicion_remote_datasource.dart';
import 'package:kcc_mobile_app/features/detalle_rendicion/data/models/detalle_rendicion_model.dart';
import 'package:kcc_mobile_app/features/detalle_rendicion/domain/entities/detalle_rendicion_entitie.dart';
import 'package:kcc_mobile_app/features/detalle_rendicion/domain/repositories/detalle_rendicion_repository.dart';
import '../../../../core/error/exceptions.dart';

import '../../../../core/error/failures.dart';

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
