import 'package:kcc_mobile_app/features/order_release_flow/order_release/domain/entitites/order_release_center_entitie.dart';

class CenterModel extends CenterEntitie {
  const CenterModel({
    required int centerId,
    required String centerName,
  }) : super(centerId: centerId, centerName: centerName);

  factory CenterModel.fromJson(Map<String, dynamic> json) => CenterModel(
        centerId: json["centerID"] as int,
        centerName: json["centerName"].toString(),
      );

  Map<String, dynamic> toJson() => {
        "centerID": centerId,
        "centerName": centerName,
      };
}
