// To parse this JSON data, do
//
//     final documento = documentoFromJson(jsonString);

// ignore_for_file: prefer_null_aware_operators, prefer_if_null_operators, lines_longer_than_80_chars
/*
import 'dart:convert';

import '../../domain/entities/pending_document_detail_entitie.dart';

PendingItemsModel documentoFromJson(String str) =>
    PendingItemsModel.fromJson(json.decode(str) as Map<String, dynamic>);

String documentoModelToJson(PendingItemsModel data) =>
    json.encode(data.toJson());

class PendingItemsModel extends PendingDocumentDetailEntitie {
  const PendingItemsModel({
    required String invoice,
    required String type,
    required String name,
    required DateTime date,
    required bool urgency,
    required bool state,
  }) : super(
          invoice: invoice,
          type: type,
          name: name,
          date: date,
          urgency: urgency,
          state: state,
        );

  factory PendingItemsModel.fromJson(Map<String, dynamic> json) =>
      PendingItemsModel(
        invoice: json["invoice"].toString(),
        type: json["type"].toString(),
        name: json["name"].toString(),
        date: DateTime.parse(json["date"].toString()),
        urgency: json["urgency"] as bool,
        state: json["state"] as bool,
      );

  Map<String, dynamic> toJson() => {
        "invoice": invoice,
        "type": type,
        "name": name,
        "urgency": urgency,
        "state": state,
      };
}
*/