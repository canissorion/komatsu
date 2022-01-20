// ignore_for_file: annotate_overrides, overridden_fields

part of 'listado_solicitudes_bloc.dart';

abstract class PendingItemsState extends Equatable {
  final DocumentPendingApprove? documentPendingApprove;
  final String? errorMessage;
  final List? items;
  final RefreshController? refreshController;

  const PendingItemsState({
    this.documentPendingApprove,
    this.errorMessage,
    this.items,
    this.refreshController,
  });
  @override
  List<Object?> get props =>
      [documentPendingApprove, errorMessage, items, refreshController];
}

class Empty extends PendingItemsState {}

class Loading extends PendingItemsState {}

class Loaded extends PendingItemsState {
  final DocumentPendingApprove documentPendingApprove;
  final List items;
  final RefreshController refreshController;

  const Loaded({
    required this.documentPendingApprove,
    required this.items,
    required this.refreshController,
  });

  @override
  List<Object> get props => [documentPendingApprove, items, refreshController];
}

class Error extends PendingItemsState {
  final String errorMessage;

  const Error({required this.errorMessage});

  @override
  List<Object> get props => [errorMessage];
}
