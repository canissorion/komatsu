// ignore_for_file: annotate_overrides, overridden_fields

part of 'detalle_rendicion_bloc.dart';

abstract class DetalleRendicionState extends Equatable {
  final DetalleRendicionEntitie? detalleRendicion;
  final String? errorMessage;

  const DetalleRendicionState({
    this.detalleRendicion,
    this.errorMessage,
  });

  @override
  List<Object?> get props => [detalleRendicion, errorMessage];
}

class Empty extends DetalleRendicionState {}

class Loading extends DetalleRendicionState {}

class Loaded extends DetalleRendicionState {
  final DetalleRendicionEntitie detalleRendicion;

  const Loaded({required this.detalleRendicion});

  @override
  List<Object> get props => [detalleRendicion];
}

class Error extends DetalleRendicionState {
  final String errorMessage;

  const Error({required this.errorMessage});

  @override
  List<Object> get props => [errorMessage];
}
