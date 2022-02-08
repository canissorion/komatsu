import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'new_expense_event.dart';
part 'new_expense_state.dart';

class NewExpenseBloc extends Bloc<NewExpenseEvent, NewExpenseState> {
  NewExpenseBloc() : super(NewExpenseInitial()) {
    on<NewExpenseEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
