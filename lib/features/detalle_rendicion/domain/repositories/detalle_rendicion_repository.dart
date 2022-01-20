import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../entities/detalle_rendicion_entitie.dart';

abstract class DetalleRendicionRepository {
  Future<Either<Failure, DetalleRendicionEntitie>>? getDetalleRendicion();
}
