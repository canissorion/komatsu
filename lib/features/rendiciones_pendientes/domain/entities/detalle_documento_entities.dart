import 'package:equatable/equatable.dart';

class DocumentPendingApprove extends Equatable {
  final String invoice;
  final String type;
  final String name;
  final bool urgency;
  final bool state;
  final DateTime date;

  const DocumentPendingApprove({
    required this.invoice,
    required this.type,
    required this.name,
    required this.urgency,
    required this.state,
    required this.date,
  });

  @override
  List<Object?> get props => [invoice, type, name, urgency, state, date];
}
