// To parse this JSON data, do
//
//     final documentModel = documentModelFromJson(jsonString);

import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:kcc_mobile_app/features/expense_detail/domain/entities/approver_entitie.dart';
import 'package:kcc_mobile_app/features/expense_detail/domain/entities/costcenter_entitie.dart';
import 'package:kcc_mobile_app/features/expense_detail/domain/entities/currency_entitie.dart';
import 'package:kcc_mobile_app/features/expense_detail/domain/entities/document_type_entitie.dart';
import 'package:kcc_mobile_app/features/expense_detail/domain/entities/expediture_entitie.dart';

import 'package:kcc_mobile_app/features/expense_detail/domain/entities/issuer_entitie.dart';

class ExpenseDetailEntitie extends Equatable {
  const ExpenseDetailEntitie({
    required this.manager,
    required this.annexes,
    required this.documentType,
    required this.documentNumber,
    required this.owner,
    required this.ownersCompany,
    required this.expenseReportCompany,
    required this.costCenter,
    required this.creationDate,
    required this.salesOffice,
    required this.currency,
    required this.expediture,
    required this.issuer,
    required this.lastApprovalDate,
    required this.approver,
  });

  final IssuerEntitie manager;
  final int annexes;
  final DocumentTypeEntitie documentType;
  final String documentNumber;
  final IssuerEntitie owner;
  final CostCenterEntitie ownersCompany;
  final String expenseReportCompany;
  final CostCenterEntitie costCenter;
  final int creationDate;
  final String salesOffice;
  final CurrencyEntitie currency;
  final ExpeditureEntitie expediture;
  final IssuerEntitie issuer;
  final int lastApprovalDate;
  final ApproverEntitie approver;

  @override
  List<Object?> get props => [
        manager,
        annexes,
        documentType,
        documentNumber,
        owner,
        ownersCompany,
        expenseReportCompany,
        costCenter,
        creationDate,
        salesOffice,
        currency,
        expediture,
        issuer,
        lastApprovalDate,
        approver
      ];
}
