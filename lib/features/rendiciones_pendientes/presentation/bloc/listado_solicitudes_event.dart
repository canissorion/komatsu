part of 'listado_solicitudes_bloc.dart';

abstract class PendingItemsEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class GetPendingItemsEvent extends PendingItemsEvent {}

class LoadMoreItemsEvent extends PendingItemsEvent {}

class ChangeDateStartEvent extends PendingItemsEvent {
  final DateTime date;

  ChangeDateStartEvent(this.date);

  @override
  List<Object> get props => [date];
}

class ChangeDateEndEvent extends PendingItemsEvent {
  final DateTime date;

  ChangeDateEndEvent(this.date);

  @override
  List<Object> get props => [date];
}
