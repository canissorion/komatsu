import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/detalle_rendicion_entitie.dart';
import '../repositories/detalle_rendicion_repository.dart';

class GetDetalleRendicion
    implements UseCase<DetalleRendicionEntitie, NoParams> {
  final DetalleRendicionRepository repository;

  GetDetalleRendicion(this.repository);

  @override
  Future<Either<Failure, DetalleRendicionEntitie>?> call(
    NoParams params,
  ) async {
    return await repository.getDetalleRendicion();
  }
}
