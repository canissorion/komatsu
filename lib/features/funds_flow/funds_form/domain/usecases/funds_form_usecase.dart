import 'package:dartz/dartz.dart';
import '../../../../../core/error/failures.dart';
import '../../../../../core/usecases/usecase.dart';
import '../entities/funds_form_entitie.dart';
import '../repositories/funds_form_repository.dart';

class GetFundsFormUseCase implements UseCase<FundsFormEntitie, NoParams> {
  final FundsFormRepository repository;

  GetFundsFormUseCase(this.repository);

  @override
  Future<Either<Failure, FundsFormEntitie>?> call(
    NoParams params,
  ) async {
    return await repository.getFundsForm();
  }
}
