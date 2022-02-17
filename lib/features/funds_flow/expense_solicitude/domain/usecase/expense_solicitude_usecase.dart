import 'package:dartz/dartz.dart';
import '../../../../../core/error/failures.dart';
import '../../../../../core/usecases/usecase.dart';
import '../entities/expense_solicitude_entitie.dart';
import '../repositories/expense_solicitude_repository.dart';

class GetExpenseSolicitudeUseCase
    implements UseCase<ExpenseSolicitudeEntitie, NoParams> {
  final ExpenseSolicitudeRepository repository;

  GetExpenseSolicitudeUseCase(this.repository);

  @override
  Future<Either<Failure, ExpenseSolicitudeEntitie>?> call(
    NoParams params,
  ) async {
    return await repository.getExpenseSolicitude();
  }
}
