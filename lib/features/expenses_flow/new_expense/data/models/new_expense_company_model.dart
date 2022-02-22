import 'package:kcc_mobile_app/features/expenses_flow/new_expense/domain/entities/new_expense_company_entitie.dart';

class CompanyNewExpenseModel extends CompanyNewExpenseEntitie {
  const CompanyNewExpenseModel({
    required String companyName,
    required int companyId,
    required String companyoffice,
  }) : super(
            companyId: companyId,
            companyName: companyName,
            companyoffice: companyoffice);

  factory CompanyNewExpenseModel.fromJson(Map<String, dynamic> json) =>
      CompanyNewExpenseModel(
        companyName: json["companyName"].toString(),
        companyId: json["companyID"] as int,
        companyoffice: json["companyoffice"].toString(),
      );

  Map<String, dynamic> toJson() => {
        "companyName": companyName,
        "companyID": companyId,
        "companyoffice": companyoffice,
      };
}
