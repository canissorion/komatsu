// ignore_for_file: annotate_overrides, overridden_fields

part of 'expense_list_bloc.dart';

abstract class PendingExpenseState extends Equatable {
  final PendingExpensesEntitie? pendingDocumentDetail;
  final String? errorMessage;
  final PendingExpensesListEntitie? items;
  final RefreshController? refreshController;
  final DateTime? startDate;
  final DateTime? endDate;

  const PendingExpenseState({
    this.pendingDocumentDetail,
    this.errorMessage,
    this.items,
    this.refreshController,
    this.startDate,
    this.endDate,
  });
  @override
  List<Object?> get props => [
        pendingDocumentDetail,
        errorMessage,
        items,
        refreshController,
        startDate,
        endDate
      ];
}

class Empty extends PendingExpenseState {}

class Loading extends PendingExpenseState {}

class Loaded extends PendingExpenseState {
  final PendingExpensesEntitie pendingDocumentDetail;
  final PendingExpensesListEntitie? items;
  final RefreshController refreshController;
  final DateTime startDate;
  final DateTime endDate;

  const Loaded({
    required this.pendingDocumentDetail,
    this.items,
    required this.refreshController,
    required this.startDate,
    required this.endDate,
  });

  @override
  List<Object?> get props =>
      [pendingDocumentDetail, items, refreshController, startDate, endDate];
}

class Error extends PendingExpenseState {
  final String errorMessage;

  const Error({required this.errorMessage});

  @override
  List<Object> get props => [errorMessage];
}
