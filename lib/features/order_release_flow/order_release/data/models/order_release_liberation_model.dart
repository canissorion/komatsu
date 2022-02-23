import 'package:kcc_mobile_app/features/order_release_flow/order_release/domain/entitites/order_release_liberation_entitie.dart';

class LiberationModel extends LiberationEntitie {
  const LiberationModel({
    required int liberationDate,
    required String sendTo,
    required String liberationStatus,
  }) : super(
          liberationDate: liberationDate,
          sendTo: sendTo,
          liberationStatus: liberationStatus,
        );

  factory LiberationModel.fromJson(Map<String, dynamic> json) =>
      LiberationModel(
        liberationDate: json["liberationDate"] as int,
        sendTo: json["sendTo"].toString(),
        liberationStatus: json["liberationStatus"].toString(),
      );

  Map<String, dynamic> toJson() => {
        "liberationDate": liberationDate,
        "sendTo": sendTo,
        "liberationStatus": liberationStatus,
      };
}
