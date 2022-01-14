import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../entities/detalle_documento_entitie.dart';

abstract class DetalleDocumentoRepository {
  Future<Either<Failure, DetalleDocumento>>? getDetalleDocumento();
}
