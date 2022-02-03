import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../../../../core/usecases/usecase.dart';
import '../../domain/entities/expense_detail_entitie.dart';
import '../../domain/entities/sub_document_resume_list_entitie.dart';
import '../../domain/usecases/expense_detail_usecase.dart';
import '../../domain/usecases/sub_document_resume_usecase.dart';

part 'expense_detail_event.dart';
part 'expense_detail_state.dart';

class ExpenseDetailBloc extends Bloc<ExpenseDetailEvent, ExpenseDetailState> {
  final GetExpenseDetail getExpenseDetail;
  final GetSubDocumentResumeUseCase getSubdocumentResumeUseCase;
  ExpenseDetailBloc(
      {required this.getExpenseDetail,
      required this.getSubdocumentResumeUseCase})
      : super(Empty()) {
    on<GetExpenseDetailEvent>((event, emit) async {
      emit(Loading());
      final expenseDetail = await getExpenseDetail(NoParams());
      final items = await getSubdocumentResumeUseCase(NoParams());
      expenseDetail!.fold(
        (l) => emit(Error(errorMessage: l.toString())),
        (r) => emit(
          Loaded(
            expenseDetail: r,
            refreshController: RefreshController(),
            mark: false,
          ),
        ),
      );
      items!.fold(
        (l) => emit(Error(errorMessage: l.toString())),
        (r) => emit(
          Loaded(
            expenseDetail: state.expenseDetail!,
            refreshController: state.refreshController!,
            items: r,
            mark: state.mark!,
          ),
        ),
      );
    });

    on<LoadMoreItemsEvent>((event, emit) async {
      if (state.expenseDetail == null) return;

      emit(
        Loaded(
          expenseDetail: state.expenseDetail!,
          items: state.items!,
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
