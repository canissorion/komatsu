import 'package:equatable/equatable.dart';

import 'funds_form_company_entitie.dart';
import 'funds_form_costCenterForm_entitie.dart';
import 'funds_form_document_entitie.dart';
import 'funds_form_user_entitie.dart';

class FundsFormEntitie extends Equatable {
  const FundsFormEntitie({
    required this.document,
    required this.company,
    required this.costCenterForm,
    required this.date,
    required this.user,
  });

  final DocumentEntitie document;
  final CompanyEntite company;
  final CostCenterFormEntitie costCenterForm;
  final int date;
  final UserEntitie user;

  @override
  List<Object?> get props => [document, company, costCenterForm, date, user];
}
