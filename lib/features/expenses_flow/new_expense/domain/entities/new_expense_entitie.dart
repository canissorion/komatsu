import 'package:equatable/equatable.dart';
import 'new_expense_company_entitie.dart';
import 'new_expense_currency_entitie.dart';
import 'new_expense_expense_resume_entitie.dart';
import 'new_expense_ticket_form_entitie.dart';

class NewExpenseEntitie extends Equatable {
  const NewExpenseEntitie({
    required this.invoiceNumber,
    required this.currency,
    required this.company,
    required this.ticketForm,
    required this.expenseResume,
  });

  final int invoiceNumber;
  final CurrencyEntitie currency;
  final CompanyNewExpenseEntitie company;
  final TicketFormEntitie ticketForm;
  final ExpenseResumeEntitie expenseResume;

  @override
  List<Object?> get props =>
      [invoiceNumber, company, currency, ticketForm, expenseResume];
}
