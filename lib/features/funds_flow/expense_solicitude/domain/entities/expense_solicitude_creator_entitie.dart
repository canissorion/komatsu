import 'package:equatable/equatable.dart';

class CreatorEntitie extends Equatable {
  const CreatorEntitie({
    required this.id,
    required this.rut,
    required this.firstName,
    required this.lastName,
  });

  final String id;
  final String rut;
  final String firstName;
  final String lastName;

  @override
  List<Object?> get props => [id, rut, firstName, lastName];
}
