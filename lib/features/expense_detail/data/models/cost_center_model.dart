
import 'package:kcc_mobile_app/features/expense_detail/domain/entities/costcenter_entitie.dart';

class CostCenterModel extends CostCenterEntitie {
  const CostCenterModel({
    required int code,
    required String name,
  }) : super(
          code: code,
          name: name,
        );

  factory CostCenterModel.fromJson(Map<String, dynamic> json) =>
      CostCenterModel(
        code: json["code"] as int,
        name: json["name"] == null ? '' : json["name"] as String,
      );

  Map<String, dynamic> toJson() => {
        "code": code == null ? null : code,
        "name": name == null ? null : name,
      };
}
