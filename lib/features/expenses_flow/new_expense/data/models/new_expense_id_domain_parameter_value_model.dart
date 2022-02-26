import 'package:equatable/equatable.dart';
import '../../domain/entities/new_expense_id_domain_parameter_value_entitie.dart';

class DomainParameterValueModel extends DomainParameterValueEntitie {
  const DomainParameterValueModel({
    required int idDomainParameterValue,
    required String code,
    required String descriptionShort,
    required dynamic codeSap,
    required String value,
    required int parentIdDomainParameterValue,
  }) : super(
          idDomainParameterValue: idDomainParameterValue,
          code: code,
          descriptionShort: descriptionShort,
          codeSap: codeSap,
          value: value,
          parentIdDomainParameterValue: parentIdDomainParameterValue,
        );

  factory DomainParameterValueModel.fromJson(Map<String, dynamic> json) =>
      DomainParameterValueModel(
        idDomainParameterValue: json["idDomainParameterValue"] as int,
        code: json["code"].toString(),
        descriptionShort: json["descriptionShort"].toString(),
        codeSap: json["codeSAP"],
        value: json["value"] == null ? '' : json["value"].toString(),
        parentIdDomainParameterValue:
            json["parentIdDomainParameterValue"] as int,
      );

  Map<String, dynamic> toJson() => {
        "idDomainParameterValue": idDomainParameterValue,
        "code": code,
        "descriptionShort": descriptionShort,
        "codeSAP": codeSap,
        "value": value == null ? '' : value,
        "parentIdDomainParameterValue": parentIdDomainParameterValue,
      };
}
