// To parse this JSON data, do
//
//     final detalleRendicion = detalleRendicionFromJson(jsonString);

import 'dart:convert';

import '../../domain/entities/expense_detail_entitie.dart';

ExpenseDetailModel detalleRendicionFromJson(String str) =>
    ExpenseDetailModel.fromJson(json.decode(str) as Map<String, dynamic>);

String detalleRendicionToJson(ExpenseDetailModel data) =>
    json.encode(data.toJson());

class ExpenseDetailModel extends ExpenseDetailEntitie {
  const ExpenseDetailModel({
    required String responsable,
    required int status,
    required int anexos,
    required String proceso,
    required String nombreUsuarioRendicion,
    required String rut,
    required String empresaUsuario,
    required String centroDeCosto,
    required String codigoEmpresaUsuario,
    required String codigoCentroDeCostos,
    required String fecha,
    required String empresaRendicion,
    required String oficinaDeVentas,
    required String moneda,
    required String objetivoDelGasto,
    required String gastos,
    required String iva,
    required String rentencin,
    required String vales,
    required String saldoPorPagar,
    required String enviadoPor,
    required String nombreEnviador,
    required String enviadoA,
    required String fechaEnvio,
    required String estado,
    required String comentarioAprobador,
  }) : super(
          responsable: responsable,
          status: status,
          anexos: anexos,
          proceso: proceso,
          nombreUsuarioRendicion: nombreUsuarioRendicion,
          rut: rut,
          empresaUsuario: empresaUsuario,
          centroDeCosto: centroDeCosto,
          codigoEmpresaUsuario: codigoEmpresaUsuario,
          codigoCentroDeCostos: codigoCentroDeCostos,
          fecha: fecha,
          empresaRendicion: empresaRendicion,
          oficinaDeVentas: oficinaDeVentas,
          moneda: moneda,
          objetivoDelGasto: objetivoDelGasto,
          gastos: gastos,
          iva: iva,
          rentencin: rentencin,
          vales: vales,
          saldoPorPagar: saldoPorPagar,
          enviadoPor: enviadoPor,
          nombreEnviador: nombreEnviador,
          enviadoA: enviadoA,
          fechaEnvio: fechaEnvio,
          estado: estado,
          comentarioAprobador: comentarioAprobador,
        );

  factory ExpenseDetailModel.fromJson(Map<String, dynamic> json) =>
      ExpenseDetailModel(
        responsable: json["responsable"] as String,
        status: json["status"] as int,
        anexos: json["anexos"] as int,
        proceso: json["proceso"] as String,
        nombreUsuarioRendicion: json["nombre_usuario_rendicion"] as String,
        rut: json["rut"] as String,
        empresaUsuario: json["empresa_usuario"] as String,
        centroDeCosto: json["centro_de_costo"] as String,
        codigoEmpresaUsuario: json["codigo_empresa_usuario"] as String,
        codigoCentroDeCostos: json["codigo_centro_de_costos"] as String,
        fecha: json["fecha"] as String,
        empresaRendicion: json["empresa_rendicion"] as String,
        oficinaDeVentas: json["oficina_de_ventas"] as String,
        moneda: json["moneda"] as String,
        objetivoDelGasto: json["objetivo_del_gasto"] as String,
        gastos: json["gastos"] as String,
        iva: json["iva"] as String,
        rentencin: json["rentención"] as String,
        vales: json["vales"] as String,
        saldoPorPagar: json["saldo_por_pagar"] as String,
        enviadoPor: json["enviado_por"] as String,
        nombreEnviador: json["nombre_enviador"] as String,
        enviadoA: json["enviado_a"] as String,
        fechaEnvio: json["fecha_envio"] as String,
        estado: json["estado"] as String,
        comentarioAprobador: json["comentario_aprobador"] as String,
      );

  Map<String, dynamic> toJson() => {
        "responsable": responsable,
        "status": status,
        "anexos": anexos,
        "proceso": proceso,
        "nombre_usuario_rendicion": nombreUsuarioRendicion,
        "rut": rut,
        "empresa_usuario": empresaUsuario,
        "centro_de_costo": centroDeCosto,
        "codigo_empresa_usuario": codigoEmpresaUsuario,
        "codigo_centro_de_costos": codigoCentroDeCostos,
        "fecha": fecha,
        "empresa_rendicion": empresaRendicion,
        "oficina_de_ventas": oficinaDeVentas,
        "moneda": moneda,
        "objetivo_del_gasto": objetivoDelGasto,
        "gastos": gastos,
        "iva": iva,
        "rentención": rentencin,
        "vales": vales,
        "saldo_por_pagar": saldoPorPagar,
        "enviado_por": enviadoPor,
        "nombre_enviador": nombreEnviador,
        "enviado_a": enviadoA,
        "fecha_envio": fechaEnvio,
        "estado": estado,
        "comentario_aprobador": comentarioAprobador,
      };
}
