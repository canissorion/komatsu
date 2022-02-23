import 'package:equatable/equatable.dart';

class CompanyNewExpenseEntitie extends Equatable {
  const CompanyNewExpenseEntitie({
    required this.companyName,
    required this.companyId,
    required this.companyoffice,
  });

  final String companyName;
  final int companyId;
  final String companyoffice;

  @override
  // TODO: implement props
  List<Object?> get props => [companyId, companyName, companyoffice];
}
