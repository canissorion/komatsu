import 'dart:convert';

import 'package:kcc_mobile_app/features/Flujo_fondos/expense_solicitude/data/models/expense_solicitude_creator_model.dart';

import '../../domain/entities/expense_solicitude_entitie.dart';
import 'expense_solicitude_authorizer_model.dart';
import 'expense_solicitude_cost_center_model.dart';
import 'expense_solicitude_currency_model.dart';
import 'expense_solicitude_document_type_model.dart';
import 'expense_solicitude_objective_entitie.dart';
import 'expense_solicitude_owner_company_model.dart';

ExpenseSolicitudeModel expenseSolicitudeFromJson(String str) =>
    ExpenseSolicitudeModel.fromJson(json.decode(str) as Map<String, dynamic>);

class ExpenseSolicitudeModel extends ExpenseSolicitudeEntitie {
  const ExpenseSolicitudeModel({
    required AuthorizerModel authorizer,
    required DocumentTypeModel documentType,
    required String documentNumber,
    required OwnersCompanyModel ownersCompany,
    required CostCenterModel costCenter,
    required int creationDate,
    required CurrencyModel currency,
    required ObjectiveModel objective,
    required CreatorModel creator,
  }) : super(
          authorizer: authorizer,
          documentType: documentType,
          documentNumber: documentNumber,
          ownersCompany: ownersCompany,
          costCenter: costCenter,
          creationDate: creationDate,
          currency: currency,
          objective: objective,
          creator: creator,
        );

  factory ExpenseSolicitudeModel.fromJson(Map<String, dynamic> json) =>
      ExpenseSolicitudeModel(
        authorizer: AuthorizerModel.fromJson(
          json["authorizer"] as Map<String, dynamic>,
        ),
        documentType: DocumentTypeModel.fromJson(
          json["documentType"] as Map<String, dynamic>,
        ),
        documentNumber: json["documentNumber"].toString(),
        ownersCompany: OwnersCompanyModel.fromJson(
          json["ownersCompany"] as Map<String, dynamic>,
        ),
        costCenter: CostCenterModel.fromJson(
          json["costCenter"] as Map<String, dynamic>,
        ),
        creationDate: json["creationDate"] as int,
        currency:
            CurrencyModel.fromJson(json["currency"] as Map<String, dynamic>),
        objective:
            ObjectiveModel.fromJson(json["objective"] as Map<String, dynamic>),
        creator: CreatorModel.fromJson(json["creator"] as Map<String, dynamic>),
      );
}
