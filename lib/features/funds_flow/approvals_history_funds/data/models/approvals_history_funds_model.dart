// ignore_for_file: avoid_dynamic_calls

import 'dart:convert';

import '../../domain/entities/approvals_history_funds_entitie.dart';

import 'approvals_history_funds_approval_element_model.dart';

ApprovalsHistoryFundsModel approvalsHistoryFundsFromJson(String str) =>
    ApprovalsHistoryFundsModel.fromJson(
      json.decode(str) as Map<String, dynamic>,
    );

class ApprovalsHistoryFundsModel extends ApprovalsHistoryFundsEntitie {
  const ApprovalsHistoryFundsModel({
    required int documentTypeId,
    required List<ApprovalElementModel> approvals,
  }) : super(documentTypeId: documentTypeId, approvals: approvals);

  factory ApprovalsHistoryFundsModel.fromJson(Map<String, dynamic> json) =>
      ApprovalsHistoryFundsModel(
        documentTypeId: json["documentTypeId"] as int,
        approvals: List<ApprovalElementModel>.from(
          json["approvals"].map(
            (x) => ApprovalElementModel.fromJson(x as Map<String, dynamic>),
          ) as Iterable<dynamic>,
        ),
      );
}
