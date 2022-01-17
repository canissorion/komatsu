// ignore_for_file: annotate_overrides, overridden_fields

part of 'detalle_documento_bloc.dart';

abstract class DetalleDocumentoState extends Equatable {
  final DetalleDocumento? detalleDocumento;
  final String? errorMessage;

  const DetalleDocumentoState({this.detalleDocumento, this.errorMessage});
  @override
  List<Object?> get props => [detalleDocumento, errorMessage];
}

class Empty extends DetalleDocumentoState {}

class Loading extends DetalleDocumentoState {}

class Loaded extends DetalleDocumentoState {
  final DetalleDocumento detalleDocumento;

  const Loaded({required this.detalleDocumento});

  @override
  List<Object> get props => [detalleDocumento];
}

class Error extends DetalleDocumentoState {
  final String errorMessage;

  const Error({required this.errorMessage});

  @override
  List<Object> get props => [errorMessage];
}
