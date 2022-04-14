// ignore_for_file: prefer_relative_imports, avoid_dynamic_calls

import 'package:kcc_mobile_app/features/expenses_flow/new_expense/data/models/new_expense_id_domain_parameter_value_model.dart';

import '../../domain/entities/new_expense_data_entitie.dart';

class DataModel extends DataEntitie {
  const DataModel({
    required int idDomainParameter,
    required String code,
    required String descriptionShort,
    required List<DomainParameterValueModel> domainParameterValues,
  }) : super(
          idDomainParameter: idDomainParameter,
          code: code,
          descriptionShort: descriptionShort,
          domainParameterValues: domainParameterValues,
        );

  factory DataModel.fromJson(Map<String, dynamic> json) => DataModel(
        idDomainParameter: json["idDomainParameter"] as int,
        code: json["code"].toString(),
        descriptionShort: json["descriptionShort"].toString(),
        domainParameterValues: List<DomainParameterValueModel>.from(
          json["domainParameterValues"].map(
            (x) => DomainParameterValueModel.fromJson(
              x as Map<String, dynamic>,
            ),
          ) as Iterable<dynamic>,
        ),
      );
}
