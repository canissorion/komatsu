// ignore_for_file: annotate_overrides, overridden_fields

part of 'detalle_rendicion_bloc.dart';

abstract class DetalleRendicionState extends Equatable {
  final DetalleRendicionEntitie? detalleRendicion;
  final RefreshController? refreshController;
  final List? items;
  final String? errorMessage;
  final bool? mark;

  const DetalleRendicionState(
      {this.detalleRendicion,
      this.refreshController,
      this.items,
      this.errorMessage,
      this.mark});

  @override
  List<Object?> get props =>
      [detalleRendicion, refreshController, items, errorMessage, mark];
}

class Empty extends DetalleRendicionState {}

class Loading extends DetalleRendicionState {}

class Loaded extends DetalleRendicionState {
  final DetalleRendicionEntitie detalleRendicion;
  final RefreshController refreshController;
  final List items;
  final bool mark;

  const Loaded(
      {required this.detalleRendicion,
      required this.refreshController,
      required this.items,
      required this.mark});

  @override
  List<Object> get props => [detalleRendicion, refreshController, items, mark];
}

class Error extends DetalleRendicionState {
  final String errorMessage;

  const Error({required this.errorMessage});

  @override
  List<Object> get props => [errorMessage];
}
