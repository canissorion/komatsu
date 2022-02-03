import '../../domain/entities/costcenter_entitie.dart';

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
}
