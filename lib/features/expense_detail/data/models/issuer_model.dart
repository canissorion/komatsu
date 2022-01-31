import 'package:kcc_mobile_app/features/expense_detail/domain/entities/issuer_entitie.dart';

class IssuerModel extends IssuerEntitie {
  const IssuerModel({
    required String id,
    required String firstName,
    required String lastName,
    required String rut,
  }) : super(
          id: id,
          firstName: firstName,
          lastName: lastName,
          rut: rut,
        );

  factory IssuerModel.fromJson(Map<String, dynamic> json) => IssuerModel(
        id: json["id"] == null ? '' : json["id"] as String,
        firstName: json["firstName"] == null ? '' : json["firstName"] as String,
        lastName: json["lastName"] == null ? '' : json["lastName"] as String,
        rut: json["rut"] == null ? '' : json["rut"] as String,
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "firstName": firstName == null ? null : firstName,
        "lastName": lastName == null ? null : lastName,
        "rut": rut == null ? null : rut,
      };
}
