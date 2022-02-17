import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'order_release_event.dart';
part 'order_release_state.dart';

class OrderReleaseBloc extends Bloc<OrderReleaseEvent, OrderReleaseState> {
  OrderReleaseBloc() : super(OrderReleaseInitial()) {
    on<OrderReleaseEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
