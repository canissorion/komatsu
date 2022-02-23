import 'package:dartz/dartz.dart';

import '../../../../../core/error/failures.dart';
import '../entitites/order_release_entitie.dart';

abstract class OrderReleaseRepository {
  Future<Either<Failure, OrderReleaseEntitie>>? getOrderRelease();
}
