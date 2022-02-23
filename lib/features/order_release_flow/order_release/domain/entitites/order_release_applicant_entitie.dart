import 'package:equatable/equatable.dart';

class ApplicantEntitie extends Equatable {
  const ApplicantEntitie({
    required this.applicantId,
    required this.applicantFirstName,
    required this.applicantLastName,
  });

  final String applicantId;
  final String applicantFirstName;
  final String applicantLastName;

  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}
