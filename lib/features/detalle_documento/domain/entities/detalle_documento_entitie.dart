import 'package:equatable/equatable.dart';

class DetalleDocumento extends Equatable {
  final String folio;
  final String tipoDocumento;
  final DateTime fecha;
  final String rutEmisor;
  final String subtipo;
  final String montoRendido;
  final String numeroDocumento;
  final String conceptoGasto;
  final String detalleGasto;
  final String descripcionDelGasto;
  final String objetoDeImputacion;
  final String valorObjeto;
  final String importeAsignado;
  final String cuenta;

  const DetalleDocumento({
    required this.folio,
    required this.tipoDocumento,
    required this.fecha,
    required this.rutEmisor,
    required this.subtipo,
    required this.montoRendido,
    required this.numeroDocumento,
    required this.conceptoGasto,
    required this.detalleGasto,
    required this.descripcionDelGasto,
    required this.objetoDeImputacion,
    required this.valorObjeto,
    required this.importeAsignado,
    required this.cuenta,
  });

  @override
  List<Object?> get props => [
        folio,
        tipoDocumento,
        fecha,
        rutEmisor,
        subtipo,
        montoRendido,
        numeroDocumento,
        conceptoGasto,
        detalleGasto,
        descripcionDelGasto,
        objetoDeImputacion,
        valorObjeto,
        importeAsignado,
        cuenta,
      ];
}
