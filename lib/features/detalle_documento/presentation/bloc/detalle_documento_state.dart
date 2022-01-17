part of 'detalle_documento_bloc.dart';

abstract class DetalleDocumentoState extends Equatable {
  @override
  List<Object> get props => [];
}

class Empty extends DetalleDocumentoState {}

class Loading extends DetalleDocumentoState {}

class Loaded extends DetalleDocumentoState {
  final DetalleDocumento documento;

  Loaded({required this.documento});

  @override
  List<Object> get props => [documento];
}

class Error extends DetalleDocumentoState {
  final String message;

  Error({required this.message});

  @override
  List<Object> get props => [message];
}
