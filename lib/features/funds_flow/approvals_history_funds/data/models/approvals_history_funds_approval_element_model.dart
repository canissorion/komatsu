import '../../domain/entities/approvals_history_funds_appoval_element_entitie.dart';

import 'approval_history_funds_approval_flow_model.dart';
import 'approval_history_funds_approver_model.dart';
import 'approvals_history_funds_sendTo_model.dart';

class ApprovalElementModel extends ApprovalElementEntitie {
  const ApprovalElementModel({
    required ApprovalFlowModel approval,
    required ApproverModel approver,
    required String statusInTheFlow,
    required SendToModel sendTo,
    required int receivedDate,
  }) : super(
          approval: approval,
          approver: approver,
          statusInTheFlow: statusInTheFlow,
          sendTo: sendTo,
          receivedDate: receivedDate,
        );

  factory ApprovalElementModel.fromJson(Map<String, dynamic> json) =>
      ApprovalElementModel(
        approval: ApprovalFlowModel.fromJson(
          json["approval"] as Map<String, dynamic>,
        ),
        approver:
            ApproverModel.fromJson(json["approver"] as Map<String, dynamic>),
        statusInTheFlow: json["statusInTheFlow"].toString(),
        sendTo: SendToModel.fromJson(json["sendTo"] as Map<String, dynamic>),
        receivedDate: json["receivedDate"] as int,
      );
}
