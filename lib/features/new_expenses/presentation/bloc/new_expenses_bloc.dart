import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'new_expenses_event.dart';
part 'new_expenses_state.dart';

class NewExpensesBloc extends Bloc<NewExpensesEvent, NewExpensesState> {
  NewExpensesBloc() : super(Empty()) {
    on<ChangeItem>((event, emit) async {
      emit(Loading());
      final List<String> names = ['Thomas', 'John', 'Mary', 'Lukas'];

      // TODO: implement event handler
    });
  }
}
