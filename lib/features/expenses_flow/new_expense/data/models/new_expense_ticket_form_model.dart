import 'package:kcc_mobile_app/features/expenses_flow/new_expense/domain/entities/new_expense_ticket_form_entitie.dart';

class TicketFormModel extends TicketFormEntitie {
  const TicketFormModel({
    required String expenseConcept,
    required String expenseDetail,
  }) : super(expenseConcept: expenseConcept, expenseDetail: expenseDetail);

  factory TicketFormModel.fromJson(Map<String, dynamic> json) =>
      TicketFormModel(
        expenseConcept: json["expenseConcept"].toString(),
        expenseDetail: json["expenseDetail"].toString(),
      );

  Map<String, dynamic> toJson() => {
        "expenseConcept": expenseConcept,
        "expenseDetail": expenseDetail,
      };
}
