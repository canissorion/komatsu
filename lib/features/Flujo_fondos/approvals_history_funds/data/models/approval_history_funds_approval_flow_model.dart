import '../../domain/entities/approvals_history_funds_approval_flow_entitie.dart';

class ApprovalFlowModel extends ApprovalFlowEntitie {
  const ApprovalFlowModel({
    required int id,
    required int date,
  }) : super(id: id, date: date);

  factory ApprovalFlowModel.fromJson(Map<String, dynamic> json) =>
      ApprovalFlowModel(
        id: json["id"] as int,
        date: json["date"] as int,
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "date": date,
      };
}
