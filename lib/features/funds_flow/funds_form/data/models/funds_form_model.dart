import 'dart:convert';

import '../../domain/entities/funds_form_entitie.dart';
import 'funds_form_company_model.dart';
import 'funds_form_costCenterForm_model.dart';
import 'funds_form_document_model.dart';
import 'funds_form_user_model.dart';

FundsFormModel fundsFormFromJson(String str) =>
    FundsFormModel.fromJson(json.decode(str) as Map<String, dynamic>);

class FundsFormModel extends FundsFormEntitie {
  const FundsFormModel({
    required DocumentModel document,
    required CompanyModel company,
    required CostCenterFormModel costCenterForm,
    required int date,
    required UserModel user,
  }) : super(
          document: document,
          company: company,
          costCenterForm: costCenterForm,
          date: date,
          user: user,
        );

  factory FundsFormModel.fromJson(Map<String, dynamic> json) => FundsFormModel(
        document:
            DocumentModel.fromJson(json["document"] as Map<String, dynamic>),
        company: CompanyModel.fromJson(json["company"] as Map<String, dynamic>),
        costCenterForm: CostCenterFormModel.fromJson(
            json["costCenterForm"] as Map<String, dynamic>),
        date: json["date"] == null ? 0 : json["date"] as int,
        user: UserModel.fromJson(json["user"] as Map<String, dynamic>),
      );
}
