import 'package:equatable/equatable.dart';

class ApproverEntitie extends Equatable {
  final String id;
  final String firstName;
  final String lastName;
  final String comments;
  final String action;

  const ApproverEntitie({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.comments,
    required this.action,
  });

  @override
  List<Object?> get props => [id, firstName, lastName, comments, action];
}
