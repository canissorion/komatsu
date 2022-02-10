import 'package:equatable/equatable.dart';

class AuthorizerEntitie extends Equatable {
  const AuthorizerEntitie({
    required this.id,
    required this.firstName,
    required this.lastName,
  });

  final String id;
  final String firstName;
  final String lastName;

  @override
  List<Object?> get props => [id, firstName, lastName];
}
