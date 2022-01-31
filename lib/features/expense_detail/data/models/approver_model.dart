// ignore_for_file: prefer_if_null_operators, unnecessary_null_comparison

import 'package:kcc_mobile_app/features/expense_detail/domain/entities/approver_entitie.dart';

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
        id: json["id"] == null ? '' : json["id"] as String,
        firstName: json["firstName"] == null ? '' : json["firstName"] as String,
        lastName: json["lastName"] == null ? '' : json["lastName"] as String,
        comments: json["comments"] == null ? '' : json["comments"] as String,
        action: json["action"] == null ? '' : json["action"] as String,
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "firstName": firstName == null ? null : firstName,
        "lastName": lastName == null ? null : lastName,
        "comments": comments == null ? null : comments,
        "action": action == null ? null : action,
      };
}
