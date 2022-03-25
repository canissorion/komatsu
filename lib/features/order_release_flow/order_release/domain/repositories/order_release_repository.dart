import 'package:dartz/dartz.dart';

import '../../../../../core/error/failures.dart';
import '../../data/models/order_release_resume_list_model.dart';
import '../entitites/order_release_entitie.dart';

abstract class OrderReleaseRepository {
  Future<Either<Failure, OrderReleaceResumeList>>? getOrderRelease();
}
