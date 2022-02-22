import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../../../core/usecases/usecase.dart';
import '../../domain/entities/new_expense_entitie.dart';
import '../../domain/usecases/new_expense_usecase.dart';

part 'new_expense_event.dart';
part 'new_expense_state.dart';

class NewExpenseBloc extends Bloc<NewExpenseEvent, NewExpenseState> {
  final GetNewExpenseUseCase getNewExpense;
  NewExpenseBloc({required this.getNewExpense}) : super(Emptyy()) {
    on<NewExpenseEvent>((event, emit) async {
      emit(Loadingg());
      final newExpense = await getNewExpense(NoParams());
      newExpense!.fold(
        (l) => emit(Errorr(errorMessage: l.toString())),
        (r) => emit(
          Loadeed(newExpense: r, mark: false),
        ),
      );
    });
    on<LoadMoreItemsEvent>((event, emit) async {
      if (state.newExpense == null) return;
      emit(
        Loadeed(newExpense: state.newExpense!, mark: state.mark!),
      );
    });
    on<MarkEvent>((event, emit) async {
      if (state.newExpense == null) return;
      emit(
        Loadeed(
          newExpense: state.newExpense!,
          mark: !state.mark!,
        ),
      );
    });
  }
}
