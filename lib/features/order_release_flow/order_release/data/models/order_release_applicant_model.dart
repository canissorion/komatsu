import '../../domain/entitites/order_release_applicant_entitie.dart';

class ApplicantModel extends ApplicantEntitie {
  const ApplicantModel({
    required String applicantId,
    required String applicantFirstName,
    required String applicantLastName,
  }) : super(
          applicantId: applicantId,
          applicantFirstName: applicantFirstName,
          applicantLastName: applicantLastName,
        );

  factory ApplicantModel.fromJson(Map<String, dynamic> json) => ApplicantModel(
        applicantId: json["applicantID"].toString(),
        applicantFirstName: json["applicantFirstName"].toString(),
        applicantLastName: json["applicantLastName"].toString(),
      );

  Map<String, dynamic> toJson() => {
        "applicantID": applicantId,
        "applicantFirstName": applicantFirstName,
        "applicantLastName": applicantLastName,
      };
}
