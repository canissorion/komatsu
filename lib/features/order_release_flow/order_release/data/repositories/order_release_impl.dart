import 'package:dartz/dartz.dart';

import '../../../../../core/error/exceptions.dart';
import '../../../../../core/error/failures.dart';
import '../../domain/entitites/order_release_entitie.dart';
import '../../domain/repositories/order_release_repository.dart';
import '../datasources/order_release_remote_datasource.dart';

class OrderReleaseRepositoryImpl implements OrderReleaseRepository {
  final OrderReleaseRemoteDataSource remoteDataSource;

  OrderReleaseRepositoryImpl({
    required this.remoteDataSource,
  });

  @override
  Future<Either<Failure, OrderReleaseEntitie>>? getOrderRelease() async {
    try {
      final orderRelease = await remoteDataSource.getOrderRelease();
      return Right(orderRelease);
    } on ServerException {
      return Left(ServerFailure());
    }
  }
}
