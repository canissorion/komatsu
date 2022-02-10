import 'package:kcc_mobile_app/features/funds_flow/approvals_history_funds/domain/entities/approvals_history_funds_sendTo_entitie.dart';

class SendToModel extends SendToEntitie {
  const SendToModel({
    required String id,
    required String firstName,
    required String lastName,
  }) : super(id: id, firstName: firstName, lastName: lastName);

  factory SendToModel.fromJson(Map<String, dynamic> json) => SendToModel(
        id: json["id"].toString(),
        firstName: json["firstName"].toString(),
        lastName: json["lastName"].toString(),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "firstName": firstName,
        "lastName": lastName,
      };
}
