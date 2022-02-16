import 'package:equatable/equatable.dart';

class UserEntitie extends Equatable {
  const UserEntitie({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.rut,
  });

  final String id;
  final String firstName;
  final String lastName;
  final String rut;

  @override
  List<Object?> get props => [id, firstName, lastName, rut];
}
