import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import '../../../../core/usecases/usecase.dart';
import '../../domain/entities/expense_detail_entitie.dart';
import '../../domain/usecases/expense_detail_usecase.dart';

part 'expense_detail_event.dart';
part 'expense_detail_state.dart';

class ExpenseDetailBloc
    extends Bloc<ExpenseDetailEvent, ExpenseDetailState> {
  final GetExpenseDetail getExpenseDetail;
  ExpenseDetailBloc({required this.getExpenseDetail}) : super(Empty()) {
    on<GetExpenseDetailEvent>((event, emit) async {
      emit(Loading());
      final expenseDetail = await getExpenseDetail(NoParams());
      expenseDetail!.fold(
        (l) => emit(Error(errorMessage: l.toString())),
        (r) => emit(
          Loaded(
            expenseDetail: r,
            refreshController: RefreshController(),
            items: List.filled(4, 0, growable: true),
            mark: false,
          ),
        ),
      );
    });

    on<LoadMoreItemsEvent>((event, emit) async {
      if (state.expenseDetail == null) return;
      final items = [...state.items!, 0];

      emit(
        Loaded(
          expenseDetail: state.expenseDetail!,
          items: items,
          refreshController: state.refreshController!,
          mark: state.mark!,
        ),
      );
      state.refreshController!.loadComplete();
    });

    on<MarkEvent>((event, emit) async {
      if (state.expenseDetail == null) return;
      emit(Loaded(
        expenseDetail: state.expenseDetail!,
        items: state.items!,
        refreshController: state.refreshController!,
        mark: !state.mark!,
      ));
    });
  }
}
