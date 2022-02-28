import 'package:equatable/equatable.dart';
import 'new_expense_id_domain_parameter_value_entitie.dart';

class DataEntitie extends Equatable {
  const DataEntitie({
    required this.idDomainParameter,
    required this.code,
    required this.descriptionShort,
    required this.domainParameterValues,
  });

  final int idDomainParameter;
  final String code;
  final String descriptionShort;
  final List<DomainParameterValueEntitie> domainParameterValues;

  @override
  List<Object?> get props =>
      [idDomainParameter, code, descriptionShort, domainParameterValues];
}
