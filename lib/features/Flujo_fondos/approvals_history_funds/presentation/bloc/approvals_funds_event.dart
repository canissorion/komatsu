part of 'approvals_funds_bloc.dart';

abstract class ApprovalsFundsEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class GetApprovalsHistoryFundsEvent extends ApprovalsFundsEvent {}

class LoadMoreItemsEvent extends ApprovalsFundsEvent {}
