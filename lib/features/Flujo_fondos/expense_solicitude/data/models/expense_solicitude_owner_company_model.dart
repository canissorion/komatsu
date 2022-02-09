import '../../domain/entities/expense_solicitude_Owner_company_entitie.dart';

class OwnersCompanyModel extends OwnersCompanyEntitie {
  const OwnersCompanyModel({
    required String code,
    required String name,
  }) : super(code: code, name: name);

  factory OwnersCompanyModel.fromJson(Map<String, dynamic> json) =>
      OwnersCompanyModel(
        code: json["code"].toString(),
        name: json["name"].toString(),
      );

  Map<String, dynamic> toJson() => {
        "code": code,
        "name": name,
      };
}
