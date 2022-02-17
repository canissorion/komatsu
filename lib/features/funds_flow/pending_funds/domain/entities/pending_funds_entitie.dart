import 'package:equatable/equatable.dart';

class PendingFundsDetailEntitie extends Equatable {
  final String number;
  final String typeName;
  final int creationDate;
  final String firstName;
  final String lastName;
  final String priority;
  final int generalStatus;

  const PendingFundsDetailEntitie({
    required this.number,
    required this.typeName,
    required this.creationDate,
    required this.firstName,
    required this.lastName,
    required this.priority,
    required this.generalStatus,
  });

  @override
  List<Object?> get props => [
        number,
        typeName,
        creationDate,
        firstName,
        lastName,
        priority,
        generalStatus
      ];
}
