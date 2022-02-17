import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import '../../../../../core/usecases/usecase.dart';
import '../../../../funds_flow/expense_solicitude/domain/usecase/expense_solicitude_usecase.dart';
import '../../domain/entities/expense_solicitude_entitie.dart';

part 'expense_solicitude_event.dart';
part 'expense_solicitude_state.dart';

class ExpenseSolicitudeBloc
    extends Bloc<ExpenseSolicitudeEvent, ExpenseSolicitudeState> {
  final GetExpenseSolicitudeUseCase getExpenseSolicitude;

  ExpenseSolicitudeBloc({
    required this.getExpenseSolicitude,
  }) : super(Empty()) {
    on<GetExpenseSolicitudeEvent>((event, emit) async {
      emit(Loading());
      final expenseSolicitude = await getExpenseSolicitude(NoParams());

      expenseSolicitude!.fold(
        (l) => emit(Error(errorMessage: l.toString())),
        (r) => emit(
          Loaded(expenseSolicitude: r, mark: false),
        ),
      );
    });

    on<LoadMoreItemsEvent>((event, emit) async {
      if (state.expenseSolicitude == null) return;
      emit(
        Loaded(expenseSolicitude: state.expenseSolicitude!, mark: state.mark!),
      );
    });

    on<MarkEvent>((event, emit) async {
      if (state.expenseSolicitude == null) return;
      emit(Loaded(
        expenseSolicitude: state.expenseSolicitude!,
        mark: !state.mark!,
      ));
    });
  }
}
