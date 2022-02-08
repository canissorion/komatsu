// ignore_for_file: annotate_overrides, overridden_fields

part of 'funds_list_bloc.dart';

abstract class PendingFundsState extends Equatable {
  //final PendingFundssEntitie? pendingDocumentDetail;
  final String? errorMessage;
  final PendingFundsDetailEntitie? items;
  final RefreshController? refreshController;
  final DateTime? startDate;
  final DateTime? endDate;

  const PendingFundsState({
    //this.pendingDocumentDetail,
    this.errorMessage,
    this.items,
    this.refreshController,
    this.startDate,
    this.endDate,
  });
  @override
  List<Object?> get props =>
      [errorMessage, items, refreshController, startDate, endDate];
}

class Empty extends PendingFundsState {}

class Loading extends PendingFundsState {}

class Loaded extends PendingFundsState {
  final PendingFundsDetailEntitie? items;
  final RefreshController refreshController;
  final DateTime startDate;
  final DateTime endDate;

  const Loaded({
    //this.items,
    required this.refreshController,
    required this.startDate,
    required this.endDate,
    required this.items,
  });

  @override
  List<Object?> get props => [refreshController, startDate, endDate, items];
}

class Error extends PendingFundsState {
  final String errorMessage;

  const Error({required this.errorMessage});

  @override
  List<Object> get props => [errorMessage];
}
