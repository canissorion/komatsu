import '../../domain/entities/Approvals_history_funds_approver_entitie.dart';

class ApproverModel extends ApproverEntitie {
  const ApproverModel({
    required String id,
    required String firstName,
    required String lastName,
    required String comments,
    required String action,
  }) : super(
          id: id,
          firstName: firstName,
          lastName: lastName,
          comments: comments,
          action: action,
        );

  factory ApproverModel.fromJson(Map<String, dynamic> json) => ApproverModel(
        id: json["id"].toString(),
        firstName: json["firstName"].toString(),
        lastName: json["lastName"].toString(),
        comments: json["comments"].toString(),
        action: json["action"].toString(),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "firstName": firstName,
        "lastName": lastName,
        "comments": comments,
        "action": action,
      };
}
