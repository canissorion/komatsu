import 'package:equatable/equatable.dart';
import 'document_pending_expenses_entitie.dart';
import 'owner_entitie.dart';

class PendingExpensesEntitie extends Equatable {
  final DocumentPendingExpensesEntitie document;
  final int creationDate;
  final OwnerEntitie owner;
  final int lastApprovalDate;
  final int generalStaus;
  final String priority;

  const PendingExpensesEntitie({
    required this.document,
    required this.creationDate,
    required this.owner,
    required this.lastApprovalDate,
    required this.generalStaus,
    required this.priority,
  });

  @override
  List<Object?> get props =>
      [document, creationDate, owner, lastApprovalDate, generalStaus, priority];
}
