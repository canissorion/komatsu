import '../../domain/entities/expense_solicitude_cost_center_entitie.dart';

class CostCenterModel extends CostCenterEntitie {
  const CostCenterModel({
    required int code,
    required String name,
  }) : super(code: code, name: name);

  factory CostCenterModel.fromJson(Map<String, dynamic> json) =>
      CostCenterModel(
        code: json["code"] as int,
        name: json["name"].toString(),
      );

  Map<String, dynamic> toJson() => {
        "code": code,
        "name": name,
      };
}
