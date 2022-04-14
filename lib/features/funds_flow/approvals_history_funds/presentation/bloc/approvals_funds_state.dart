// ignore_for_file: annotate_overrides, overridden_fields

part of 'approvals_funds_bloc.dart';

abstract class ApprovalsFundsState extends Equatable {
  final ApprovalsHistoryFundsEntitie? items;
  final String? errorMessage;

  const ApprovalsFundsState({
    this.items,
    this.errorMessage,
  });

  @override
  List<Object?> get props => [items, errorMessage];
}

class Empty extends ApprovalsFundsState {}

class Loading extends ApprovalsFundsState {}

class Loaded extends ApprovalsFundsState {
  final ApprovalsHistoryFundsEntitie? items;

  const Loaded({
    this.items,
  });

  @override
  List<Object?> get props => [items];
}

class Error extends ApprovalsFundsState {
  final String errorMessage;

  const Error({required this.errorMessage});

  @override
  List<Object> get props => [errorMessage];
}
