import 'package:equatable/equatable.dart';

class TicketFormEntitie extends Equatable {
  const TicketFormEntitie({
    required this.expenseConcept,
    required this.expenseDetail,
  });

  final String expenseConcept;
  final String expenseDetail;

  @override
  List<Object?> get props => [expenseConcept, expenseDetail];
}
