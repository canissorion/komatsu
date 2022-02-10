import 'package:equatable/equatable.dart';

class OwnerEntitie extends Equatable {
  final String id;
  final String firstName;
  final String lastName;

  const OwnerEntitie({
    required this.id,
    required this.firstName,
    required this.lastName,
  });

  @override
  List<Object?> get props => [id, firstName, lastName];
}
