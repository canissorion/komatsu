part of 'approvals_history_bloc.dart';

abstract class ApprovalsHistoryState extends Equatable {
  final ApprovalsHistoryListEntitie? items;
  final String? errorMessage;

  const ApprovalsHistoryState({
    this.items,
    this.errorMessage,
  });

  @override
  List<Object?> get props => [items, errorMessage];
}

class Empty extends ApprovalsHistoryState {}

class Loading extends ApprovalsHistoryState {}

class Loaded extends ApprovalsHistoryState {
  final ApprovalsHistoryListEntitie? items;

  const Loaded({
    this.items,
  });

  @override
  List<Object?> get props => [items];
}

class Error extends ApprovalsHistoryState {
  final String errorMessage;

  const Error({required this.errorMessage});

  @override
  List<Object> get props => [errorMessage];
}
