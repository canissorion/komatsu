part of 'listado_solicitudes_bloc.dart';

abstract class PendingItemsEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class GetPendingItemsEvent extends PendingItemsEvent {}

class LoadMoreItemsEvent extends PendingItemsEvent {}
