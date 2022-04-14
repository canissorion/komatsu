import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../../../core/usecases/usecase.dart';
import '../../data/models/order_release_resume_list_model.dart';
import '../../domain/usecases/order_release_usecase.dart';

part 'order_release_event.dart';
part 'order_release_state.dart';

class OrderReleaseBloc extends Bloc<OrderReleaseEvent, OrderReleaseState> {
  final GetOrderReleaseUseCase getOrderRelease;
  OrderReleaseBloc({
    required this.getOrderRelease,
  }) : super(Empty()) {
    on<OrderReleaseEvent>((event, emit) async {
      emit(Loading());
      final orderRelease = await getOrderRelease(NoParams());
      orderRelease!.fold(
        (l) => emit(Error(errorMessage: l.toString())),
        (r) => emit(
          Loaded(orderRelease: r, mark: false),
        ),
      );
    });
    on<LoadMoreItemsEvent>((event, emit) async {
      if (state.orderRelease == null) return;
      emit(
        Loaded(orderRelease: state.orderRelease!, mark: state.mark!),
      );
    });
    on<MarkEvent>((event, emit) async {
      if (state.orderRelease == null) return;
      emit(
        Loaded(
          orderRelease: state.orderRelease!,
          mark: !state.mark!,
        ),
      );
    });
  }
}
