// To parse this JSON data, do
//
//     final documento = documentoFromJson(jsonString);

// ignore_for_file: prefer_null_aware_operators, prefer_if_null_operators, lines_longer_than_80_chars

import 'dart:convert';

import '../../domain/entities/detalle_documento_entitie.dart';

DocumentoModel documentoFromJson(String str) =>
    DocumentoModel.fromJson(json.decode(str) as Map<String, dynamic>);

String documentoModelToJson(DocumentoModel data) => json.encode(data.toJson());

class DocumentoModel extends DetalleDocumento {
  const DocumentoModel({
    required int id,
    required String folio,
    required String tipoDocumento,
    required DateTime fecha,
    required String rutEmisor,
    required String subtipo,
    required String montoRendido,
    required String numeroDocumento,
    required String conceptoGasto,
    required String detalleGasto,
    required String descripcionDelGasto,
    required String objetoDeImputacion,
    required String valorObjeto,
    required String importeAsignado,
    required String cuenta,
  }) : super(
          id: id,
          folio: folio,
          tipoDocumento: tipoDocumento,
          fecha: fecha,
          rutEmisor: rutEmisor,
          subtipo: subtipo,
          montoRendido: montoRendido,
          numeroDocumento: numeroDocumento,
          conceptoGasto: conceptoGasto,
          detalleGasto: detalleGasto,
          descripcionDelGasto: descripcionDelGasto,
          objetoDeImputacion: objetoDeImputacion,
          valorObjeto: valorObjeto,
          importeAsignado: importeAsignado,
          cuenta: cuenta,
        );

  factory DocumentoModel.fromJson(Map<String, dynamic> json) => DocumentoModel(
        id: json["id"] as int,
        folio: json["folio"] as String,
        tipoDocumento: json["tipo_documento"].toString(),
        fecha: DateTime.parse(json["fecha"].toString()),
        rutEmisor: json["rut_emisor"].toString(),
        subtipo: json["subtipo"].toString(),
        montoRendido: json["monto_rendido"].toString(),
        numeroDocumento: json["numero_documento"].toString(),
        conceptoGasto: json["concepto_gasto"].toString(),
        detalleGasto: json["detalle_gasto"].toString(),
        descripcionDelGasto: json["descripcion_del_gasto"].toString(),
        objetoDeImputacion: json["objeto_de_imputacion"].toString(),
        valorObjeto: json["valor_objeto"].toString(),
        importeAsignado: json["importe_asignado"].toString(),
        cuenta: json["cuenta"].toString(),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "folio": folio,
        "tipo_documento": tipoDocumento,
        "fecha":
            "${fecha.year.toString().padLeft(4, '0')}-${fecha.month.toString().padLeft(2, '0')}-${fecha.day.toString().padLeft(2, '0')}",
        "rut_emisor": rutEmisor,
        "subtipo": subtipo,
        "monto_rendido": montoRendido,
        "numero_documento": numeroDocumento,
        "concepto_gasto": conceptoGasto,
        "detalle_gasto": detalleGasto,
        "descripcion_del_gasto": descripcionDelGasto,
        "objeto_de_imputacion": objetoDeImputacion,
        "valor_objeto": valorObjeto,
        "importe_asignado": importeAsignado,
        "cuenta": cuenta,
      };
}
