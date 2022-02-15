import 'package:dartz/dartz.dart';

import '../../../../../core/error/exceptions.dart';
import '../../../../../core/error/failures.dart';

import '../../domain/entities/funds_form_entitie.dart';
import '../../domain/repositories/funds_form_repository.dart';
import '../datasources/funds_form_remote_datasources.dart';

class FundsFormRepositoryImpl implements FundsFormRepository {
  final FundsFormRemoteDataSource remoteDataSource;

  FundsFormRepositoryImpl({
    required this.remoteDataSource,
  });

  @override
  Future<Either<Failure, FundsFormEntitie>>? getFundsForm() async {
    try {
      final fundsForm = await remoteDataSource.getFundsForm();
      return Right(fundsForm);
    } on ServerException {
      return Left(ServerFailure());
    }
  }
}
