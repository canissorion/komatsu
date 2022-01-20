import 'package:dartz/dartz.dart';
import 'package:kcc_mobile_app/features/detalle_rendicion/domain/entities/detalle_rendicion_entitie.dart';
import 'package:kcc_mobile_app/features/detalle_rendicion/domain/repositories/detalle_rendicion_repository.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecase.dart';

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
