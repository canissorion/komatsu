part of 'approvals_history_bloc.dart';

abstract class ApprovalsHistoryEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class GetApprovalsHistoryEvent extends ApprovalsHistoryEvent {}

class LoadMoreItemsEvent extends ApprovalsHistoryEvent {}
