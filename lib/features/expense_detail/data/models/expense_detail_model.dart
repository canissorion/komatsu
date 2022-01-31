// To parse this JSON data, do
//
//     final documentDetailModel = documentDetailModelFromJson(jsonString);

import 'dart:convert';

import 'package:kcc_mobile_app/features/expense_detail/data/models/approver_model.dart';
import 'package:kcc_mobile_app/features/expense_detail/data/models/cost_center_model.dart';
import 'package:kcc_mobile_app/features/expense_detail/data/models/currency_model.dart';
import 'package:kcc_mobile_app/features/expense_detail/data/models/document_type_model.dart';
import 'package:kcc_mobile_app/features/expense_detail/data/models/expediture_model.dart';
import 'package:kcc_mobile_app/features/expense_detail/data/models/issuer_model.dart';
import 'package:kcc_mobile_app/features/expense_detail/domain/entities/expense_detail_entitie.dart';

ExpenseDetailModel expenseDetailModelFromJson(String str) =>
    ExpenseDetailModel.fromJson(json.decode(str) as Map<String, dynamic>);

class ExpenseDetailModel extends ExpenseDetailEntitie {
  const ExpenseDetailModel({
    required IssuerModel manager,
    required int annexes,
    required DocumentTypeModel documentType,
    required String documentNumber,
    required IssuerModel owner,
    required CostCenterModel ownersCompany,
    required String expenseReportCompany,
    required CostCenterModel costCenter,
    required int creationDate,
    required String salesOffice,
    required CurrencyModel currency,
    required ExpeditureModel expediture,
    required IssuerModel issuer,
    required int lastApprovalDate,
    required ApproverModel approver,
  }) : super(
          manager: manager,
          annexes: annexes,
          documentType: documentType,
          documentNumber: documentNumber,
          owner: owner,
          ownersCompany: ownersCompany,
          expenseReportCompany: expenseReportCompany,
          costCenter: costCenter,
          creationDate: creationDate,
          salesOffice: salesOffice,
          currency: currency,
          expediture: expediture,
          issuer: issuer,
          lastApprovalDate: lastApprovalDate,
          approver: approver,
        );

  factory ExpenseDetailModel.fromJson(Map<String, dynamic> json) =>
      ExpenseDetailModel(
        manager: IssuerModel.fromJson(json["manager"] as Map<String, dynamic>),
        annexes: json["annexes"] == null ? 0 : json["annexes"] as int,
        documentType: DocumentTypeModel.fromJson(
          json["documentType"] as Map<String, dynamic>,
        ),
        documentNumber: json["documentNumber"] == null
            ? ''
            : json["documentNumber"] as String,
        owner: IssuerModel.fromJson(json["owner"] as Map<String, dynamic>),
        ownersCompany: CostCenterModel.fromJson(
            json["ownersCompany"] as Map<String, dynamic>),
        expenseReportCompany: json["expenseReportCompany"] == null
            ? ''
            : json["expenseReportCompany"] as String,
        costCenter: CostCenterModel.fromJson(
            json["costCenter"] as Map<String, dynamic>),
        creationDate:
            json["creationDate"] == null ? 0 : json["creationDate"] as int,
        salesOffice:
            json["salesOffice"] == null ? '' : json["salesOffice"] as String,
        currency:
            CurrencyModel.fromJson(json["currency"] as Map<String, dynamic>),
        expediture: ExpeditureModel.fromJson(
          json["expediture"] as Map<String, dynamic>,
        ),
        issuer: IssuerModel.fromJson(
          json["issuer"] as Map<String, dynamic>,
        ),
        lastApprovalDate: json["lastApprovalDate"] == null
            ? 0
            : json["lastApprovalDate"] as int,
        approver:
            ApproverModel.fromJson(json["approver"] as Map<String, dynamic>),
      );
}
