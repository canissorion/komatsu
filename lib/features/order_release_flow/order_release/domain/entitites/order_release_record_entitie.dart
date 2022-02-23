import 'package:equatable/equatable.dart';

class RecordEntitie extends Equatable {
  const RecordEntitie({
    required this.recordDate,
    required this.orderNumber,
    required this.urgency,
    required this.grpOrder,
  });

  final int recordDate;
  final int orderNumber;
  final String urgency;
  final int grpOrder;

  @override
  // TODO: implement props
  List<Object?> get props => [recordDate, orderNumber, urgency, grpOrder];
}
