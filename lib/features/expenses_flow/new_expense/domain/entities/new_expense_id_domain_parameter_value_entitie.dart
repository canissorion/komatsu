import 'package:equatable/equatable.dart';

class DomainParameterValueEntitie extends Equatable {
  const DomainParameterValueEntitie({
    required this.idDomainParameterValue,
    required this.code,
    required this.descriptionShort,
    required this.codeSap,
    required this.value,
    required this.parentIdDomainParameterValue,
  });

  final int idDomainParameterValue;
  final String code;
  final String descriptionShort;
  final dynamic codeSap;
  final String value;
  final int parentIdDomainParameterValue;

  @override
  // TODO: implement props
  List<Object?> get props => [
        idDomainParameterValue,
        code,
        descriptionShort,
        codeSap,
        value,
        parentIdDomainParameterValue
      ];
}
