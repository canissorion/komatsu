import 'package:equatable/equatable.dart';

class ExpenseDetailEntitie extends Equatable {
  final String responsable;
  final int status;
  final int anexos;
  final String proceso;
  final String nombreUsuarioRendicion;
  final String rut;
  final String empresaUsuario;
  final String centroDeCosto;
  final String codigoEmpresaUsuario;
  final String codigoCentroDeCostos;
  final String fecha;
  final String empresaRendicion;
  final String oficinaDeVentas;
  final String moneda;
  final String objetivoDelGasto;
  final String gastos;
  final String iva;
  final String rentencin;
  final String vales;
  final String saldoPorPagar;
  final String enviadoPor;
  final String nombreEnviador;
  final String enviadoA;
  final String fechaEnvio;
  final String estado;
  final String comentarioAprobador;

  const ExpenseDetailEntitie({
    required this.responsable,
    required this.status,
    required this.anexos,
    required this.proceso,
    required this.nombreUsuarioRendicion,
    required this.rut,
    required this.empresaUsuario,
    required this.centroDeCosto,
    required this.codigoEmpresaUsuario,
    required this.codigoCentroDeCostos,
    required this.fecha,
    required this.empresaRendicion,
    required this.oficinaDeVentas,
    required this.moneda,
    required this.objetivoDelGasto,
    required this.gastos,
    required this.iva,
    required this.rentencin,
    required this.vales,
    required this.saldoPorPagar,
    required this.enviadoPor,
    required this.nombreEnviador,
    required this.enviadoA,
    required this.fechaEnvio,
    required this.estado,
    required this.comentarioAprobador,
  });

  @override
  List<Object?> get props => [
        responsable,
        status,
        anexos,
        proceso,
        nombreUsuarioRendicion,
        rut,
        empresaUsuario,
        centroDeCosto,
        codigoEmpresaUsuario,
        codigoCentroDeCostos,
        fecha,
        empresaRendicion,
        oficinaDeVentas,
        moneda,
        objetivoDelGasto,
        gastos,
        iva,
        rentencin,
        vales,
        saldoPorPagar,
        enviadoPor,
        nombreEnviador,
        enviadoA,
        fechaEnvio,
        estado,
        comentarioAprobador,
      ];
}
