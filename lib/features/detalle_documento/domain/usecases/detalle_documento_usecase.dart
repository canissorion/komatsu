import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/detalle_documento_entitie.dart';
import '../repositories/detalle_documento_repository.dart';

class GetDetalleDocumento implements UseCase<DetalleDocumento, NoParams> {
  final DetalleDocumentoRepository repository;

  GetDetalleDocumento(this.repository);

  @override
  Future<Either<Failure, DetalleDocumento>?> call(NoParams params) async {
    return await repository.getDetalleDocumento();
  }
}
