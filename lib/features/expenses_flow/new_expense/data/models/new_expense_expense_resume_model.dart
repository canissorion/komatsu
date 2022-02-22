import '../../domain/entities/new_expense_expense_resume_entitie.dart';

class ExpenseResumeModel extends ExpenseResumeEntitie {
  const ExpenseResumeModel({
    required int expense,
    required int iva,
    required int retention,
    required int vouchers,
    required int workerBalance,
  }) : super(
          expense: expense,
          iva: iva,
          retention: retention,
          vouchers: vouchers,
          workerBalance: workerBalance,
        );

  factory ExpenseResumeModel.fromJson(Map<String, dynamic> json) =>
      ExpenseResumeModel(
        expense: json["expense"] as int,
        iva: json["IVA"] as int,
        retention: json["retention"] as int,
        vouchers: json["vouchers"] as int,
        workerBalance: json["workerBalance"] as int,
      );

  Map<String, dynamic> toJson() => {
        "expense": expense,
        "IVA": iva,
        "retention": retention,
        "vouchers": vouchers,
        "workerBalance": workerBalance,
      };
}
