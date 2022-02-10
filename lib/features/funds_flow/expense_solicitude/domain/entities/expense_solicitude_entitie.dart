import 'package:equatable/equatable.dart';
import 'expense_solicitude_creator_entitie.dart';

import 'expense_solicitude_Owner_company_entitie.dart';
import 'expense_solicitude_authotizer_entitie.dart';
import 'expense_solicitude_cost_center_entitie.dart';
import 'expense_solicitude_currency_entitie.dart';
import 'expense_solicitude_document_type_entitie.dart';
import 'expense_solicitude_objective_entitie.dart';

class ExpenseSolicitudeEntitie extends Equatable {
  const ExpenseSolicitudeEntitie({
    required this.authorizer,
    required this.documentType,
    required this.documentNumber,
    required this.ownersCompany,
    required this.costCenter,
    required this.creationDate,
    required this.currency,
    required this.objective,
    required this.creator,
  });

  final AuthorizerEntitie authorizer;
  final DocumentTypeEntitie documentType;
  final String documentNumber;
  final OwnersCompanyEntitie ownersCompany;
  final CostCenterEntitie costCenter;
  final int creationDate;
  final CurrencyEntitie currency;
  final ObjectiveEntitie objective;
  final CreatorEntitie creator;

  @override
  List<Object?> get props => [
        authorizer,
        documentType,
        documentNumber,
        ownersCompany,
        costCenter,
        creationDate,
        currency,
        objective,
        creator
      ];
}
