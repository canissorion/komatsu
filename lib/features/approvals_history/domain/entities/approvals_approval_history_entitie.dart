import 'package:equatable/equatable.dart';

class ApprovalsApprovalHistoryEntitie extends Equatable {
  final int id;
  final int date;
  const ApprovalsApprovalHistoryEntitie({
    required this.id,
    required this.date,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [id, date];
}
