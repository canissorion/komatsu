part of 'detalle_rendicion_bloc.dart';

abstract class DetalleRendicionEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class GetDetalleRendicionEvent extends DetalleRendicionEvent {}

class LoadMoreItemsEvent extends DetalleRendicionEvent {}

class MarkEvent extends DetalleRendicionEvent {}
