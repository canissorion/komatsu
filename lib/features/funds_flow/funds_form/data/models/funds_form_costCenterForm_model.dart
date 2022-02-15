import '../../domain/entities/funds_form_costCenterForm_entitie.dart';

class CostCenterFormModel extends CostCenterFormEntitie {
  const CostCenterFormModel({
    required int code,
    required String name,
  }) : super(code: code, name: name);

  factory CostCenterFormModel.fromJson(Map<String, dynamic> json) =>
      CostCenterFormModel(
        code: json["code"] == null ? 0 : json["code"] as int,
        name: json["name"] == null ? '' : json["name"].toString(),
      );

  Map<String, dynamic> toJson() => {
        "code": code,
        "name": name,
      };
}
