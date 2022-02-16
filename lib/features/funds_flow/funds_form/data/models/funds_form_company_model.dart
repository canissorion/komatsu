import '../../domain/entities/funds_form_company_entitie.dart';

class CompanyModel extends CompanyEntite {
  const CompanyModel({
    required String code,
    required String name,
  }) : super(code: code, name: name);

  factory CompanyModel.fromJson(Map<String, dynamic> json) => CompanyModel(
        code: json["code"] == null ? '' : json["code"].toString(),
        name: json["name"] == null ? '' : json["name"].toString(),
      );

  Map<String, dynamic> toJson() => {
        "code": code,
        "name": name,
      };
}
