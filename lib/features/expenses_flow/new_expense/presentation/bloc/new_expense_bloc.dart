import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../../../core/usecases/usecase.dart';
import '../../domain/entities/new_expense_entitie.dart';
import '../../domain/usecases/new_expense_usecase.dart';

part 'new_expense_event.dart';
part 'new_expense_state.dart';

class NewExpenseBloc extends Bloc<NewExpenseEvent, NewExpenseState> {
  final GetNewExpenseUseCase getNewExpense;
  NewExpenseBloc({required this.getNewExpense}) : super(EmptyNewExpenses()) {
    on<NewExpenseEvent>((event, emit) async {
      emit(LoadingNewExpenses());
      final newExpense = await getNewExpense(NoParams());
      newExpense!.fold(
        (l) => emit(ErrorNewExpenses(errorMessage: l.toString())),
        (r) => emit(
          LoadedNewExpenses(newExpense: r, mark: false, selectField: ''),
        ),
      );
    });
    on<LoadMoreItemsEvent>((event, emit) async {
      if (state.newExpense == null) return;
      emit(
        LoadedNewExpenses(
            newExpense: state.newExpense!,
            mark: state.mark!,
            selectField: state.selectField),
      );
    });
    on<MarkEvent>((event, emit) async {
      if (state.newExpense == null) return;
      emit(
        LoadedNewExpenses(
          newExpense: state.newExpense!,
          mark: !state.mark!,
          selectField: state.selectField!,
        ),
      );
    });
    on<ChangeSelectFieldData>((event, emit) async {
      if (state.newExpense == null) return;
      emit(
        LoadedNewExpenses(
          newExpense: state.newExpense!,
          mark: state.mark!,
          selectField: state.selectField,
        ),
      );
    });
  }
}
