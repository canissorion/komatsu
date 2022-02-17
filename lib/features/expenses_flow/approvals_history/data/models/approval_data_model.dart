import '../../domain/entities/approval_data_entitie.dart';

import 'approval_element_history_model.dart';

class ApprovalDataModel extends ApprovalDataEntitie {
  const ApprovalDataModel({
    required int documentTypeId,
    required List<ApprovalElementHistoryModel> approvals,
  }) : super(documentTypeId: documentTypeId, approvals: approvals);

  factory ApprovalDataModel.fromJson(Map<String, dynamic> json) =>
      ApprovalDataModel(
        documentTypeId: json["documentTypeId"] as int,
        approvals: List<ApprovalElementHistoryModel>.from(
          json["approvals"].map(
            (x) =>
                ApprovalElementHistoryModel.fromJson(x as Map<String, dynamic>),
          ) as Iterable<dynamic>,
        ),
      );
}
