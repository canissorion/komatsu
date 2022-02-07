import '../../domain/entities/approver_entitie.dart';

class ApproverHistoryModel extends ApproverHistoryEntitie {
  const ApproverHistoryModel({
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

  factory ApproverHistoryModel.fromJson(Map<String, dynamic> json) =>
      ApproverHistoryModel(
        id: json["id"] as String,
        firstName: json["firstName"] as String,
        lastName: json["lastName"] as String,
        comments: json["comments"] as String,
        action: json["action"] as String,
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "firstName": firstName,
        "lastName": lastName,
        "comments": comments,
        "action": action,
      };
}
