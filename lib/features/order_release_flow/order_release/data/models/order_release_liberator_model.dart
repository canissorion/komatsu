import 'package:kcc_mobile_app/features/order_release_flow/order_release/domain/entitites/order_release_liberator_entitie.dart';

class LiberatorModel extends LiberatorEntitie {
  const LiberatorModel({
    required String liberatorId,
    required String liberatorFirstName,
    required String liberatorLastName,
    required String mail,
  }) : super(
          liberatorId: liberatorId,
          liberatorFirstName: liberatorFirstName,
          liberatorLastName: liberatorLastName,
          mail: mail,
        );

  factory LiberatorModel.fromJson(Map<String, dynamic> json) => LiberatorModel(
        liberatorId: json["liberatorID"].toString(),
        liberatorFirstName: json["liberatorFirstName"].toString(),
        liberatorLastName: json["liberatorLastName"].toString(),
        mail: json["mail"].toString(),
      );

  Map<String, dynamic> toJson() => {
        "liberatorID": liberatorId,
        "liberatorFirstName": liberatorFirstName,
        "liberatorLastName": liberatorLastName,
        "mail": mail,
      };
}
