// ignore_for_file: annotate_overrides, overridden_fields

part of 'expense_detail_bloc.dart';

abstract class ExpenseDetailState extends Equatable {
  final ExpenseDetailEntitie? expenseDetail;
  final RefreshController? refreshController;
  final SubDocumentResumeListEntitie? items;
  final String? errorMessage;
  final bool? mark;

  const ExpenseDetailState({
    this.expenseDetail,
    this.refreshController,
    this.items,
    this.errorMessage,
    this.mark,
  });

  @override
  List<Object?> get props =>
      [expenseDetail, refreshController, items, errorMessage, mark];
}

class Empty extends ExpenseDetailState {}

class Loading extends ExpenseDetailState {}

class Loaded extends ExpenseDetailState {
  final ExpenseDetailEntitie expenseDetail;
  final RefreshController refreshController;
  final SubDocumentResumeListEntitie? items;
  final bool mark;

  const Loaded({
    required this.expenseDetail,
    required this.refreshController,
    this.items,
    required this.mark,
  });

  @override
  List<Object?> get props => [expenseDetail, refreshController, items, mark];
}

class Error extends ExpenseDetailState {
  final String errorMessage;

  const Error({required this.errorMessage});

  @override
  List<Object> get props => [errorMessage];
}
