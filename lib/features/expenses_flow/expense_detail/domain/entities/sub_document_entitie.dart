import 'package:equatable/equatable.dart';

class SubDocumentEntitie extends Equatable {
  const SubDocumentEntitie({
    required this.id,
    required this.date,
    required this.type,
    required this.number,
    required this.amount,
  });

  final String id;
  final int date;
  final String type;
  final dynamic number;
  final double amount;

  @override
  List<Object?> get props => [id, date, type, number, amount];
}
