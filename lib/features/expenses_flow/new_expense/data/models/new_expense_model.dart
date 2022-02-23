import 'dart:convert';

import '../../domain/entities/new_expense_entitie.dart';
import 'new_expense_company_model.dart';
import 'new_expense_currency_model.dart';
import 'new_expense_expense_resume_model.dart';
import 'new_expense_ticket_form_model.dart';

NewExpenseModel newExpenseFromJson(String str) =>
    NewExpenseModel.fromJson(json.decode(str) as Map<String, dynamic>);

class NewExpenseModel extends NewExpenseEntitie {
  const NewExpenseModel({
    required int invoiceNumber,
    required CurrencyModel currency,
    required CompanyNewExpenseModel company,
    required TicketFormModel ticketForm,
    required ExpenseResumeModel expenseResume,
  }) : super(
          invoiceNumber: invoiceNumber,
          company: company,
          currency: currency,
          ticketForm: ticketForm,
          expenseResume: expenseResume,
        );

  factory NewExpenseModel.fromJson(Map<String, dynamic> json) =>
      NewExpenseModel(
        invoiceNumber: json["invoiceNumber"] as int,
        currency:
            CurrencyModel.fromJson(json["currency"] as Map<String, dynamic>),
        company: CompanyNewExpenseModel.fromJson(
            json["company"] as Map<String, dynamic>),
        ticketForm: TicketFormModel.fromJson(
            json["ticketForm"] as Map<String, dynamic>),
        expenseResume: ExpenseResumeModel.fromJson(
            json["expenseResume"] as Map<String, dynamic>),
      );
}
