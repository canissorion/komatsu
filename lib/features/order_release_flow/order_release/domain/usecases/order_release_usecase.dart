import 'package:dartz/dartz.dart';
import 'package:kcc_mobile_app/features/order_release_flow/order_release/domain/entitites/order_release_entitie.dart';

import '../../../../../core/error/failures.dart';
import '../../../../../core/usecases/usecase.dart';
import '../../data/models/order_release_resume_list_model.dart';
import '../repositories/order_release_repository.dart';

class GetOrderReleaseUseCase
    implements UseCase<OrderReleaceResumeList, NoParams> {
  final OrderReleaseRepository repository;

  GetOrderReleaseUseCase(this.repository);

  @override
  Future<Either<Failure, OrderReleaceResumeList>?> call(
    NoParams params,
  ) async {
    return await repository.getOrderRelease();
  }
}
