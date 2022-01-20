import 'package:dartz/dartz.dart';
import 'package:kcc_mobile_app/features/detalle_rendicion/domain/entities/detalle_rendicion_entitie.dart';

import '../../../../core/error/failures.dart';

abstract class DetalleRendicionRepository {
  Future<Either<Failure, DetalleRendicionEntitie>>? getDetalleRendicion();
}
