import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'new_expenses_event.dart';
part 'new_expenses_state.dart';

class NewExpensesBloc extends Bloc<NewExpensesEvent, NewExpensesState> {
  NewExpensesBloc() : super(Empty()) {
    on<ChangeItem>((event, emit) async {
      //String? select;
      emit(Loading());

      emit(Loaded(currentExpense: event.data));
      // TODO: implement event handler
    });
  }
}
