import 'dart:convert';

import '../../domain/entities/pending_expenses_entitie.dart';
import 'document_pending_expenses_model.dart';
import 'owner_model.dart';

PendingExpensesModel pendingExpensesModelFromJson(String str) =>
    PendingExpensesModel.fromJson(json.decode(str) as Map<String, dynamic>);

class PendingExpensesModel extends PendingExpensesEntitie {
  const PendingExpensesModel({
    required DocumentPendingExpensesModel document,
    required int creationDate,
    required OwnerModel owner,
    required int lastApprovalDate,
    required int generalStaus,
    required String priority,
  }) : super(
          document: document,
          creationDate: creationDate,
          owner: owner,
          lastApprovalDate: lastApprovalDate,
          generalStaus: generalStaus,
          priority: priority,
        );

  factory PendingExpensesModel.fromJson(Map<String, dynamic> json) =>
      PendingExpensesModel(
        document: DocumentPendingExpensesModel.fromJson(
          json["document"] as Map<String, dynamic>,
        ),
        creationDate: json["creationDate"] as int,
        owner: OwnerModel.fromJson(json["owner"] as Map<String, dynamic>),
        lastApprovalDate: json["lastApprovalDate"] as int,
        generalStaus: json["generalStaus"] as int,
        priority: json["priority"] as String,
      );

  Map<String, dynamic> toJson() => {
        "document": document,
        "creationDate": creationDate,
        "owner": owner,
        "lastApprovalDate": lastApprovalDate,
        "generalStaus": generalStaus,
        "priority": priority,
      };
}
