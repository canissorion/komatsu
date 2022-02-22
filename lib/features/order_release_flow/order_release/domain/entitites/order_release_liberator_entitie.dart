import 'package:equatable/equatable.dart';

class LiberatorEntitie extends Equatable {
  const LiberatorEntitie({
    required this.liberatorId,
    required this.liberatorFirstName,
    required this.liberatorLastName,
    required this.mail,
  });

  final String liberatorId;
  final String liberatorFirstName;
  final String liberatorLastName;
  final String mail;

  @override
  List<Object?> get props => [
        liberatorId,
        liberatorFirstName,
        liberatorLastName,
        mail,
      ];
}
