import 'package:equatable/equatable.dart';

class ApprovalFlowEntitie extends Equatable {
  const ApprovalFlowEntitie({
    required this.id,
    required this.date,
  });

  final int id;
  final int date;

  @override
  List<Object?> get props => [id, date];
}
