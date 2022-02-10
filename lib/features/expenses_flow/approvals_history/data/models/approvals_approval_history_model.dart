import '../../domain/entities/approvals_approval_history_entitie.dart';

class ApprovalsApprovalHistoryModel extends ApprovalsApprovalHistoryEntitie {
  const ApprovalsApprovalHistoryModel({
    required int id,
    required int date,
  }) : super(id: id, date: date);

  factory ApprovalsApprovalHistoryModel.fromJson(Map<String, dynamic> json) =>
      ApprovalsApprovalHistoryModel(
        id: json["id"] as int,
        date: json["date"] as int,
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "date": date,
      };
}
