import '../../domain/entities/funds_form_user_entitie.dart';

class UserModel extends UserEntitie {
  const UserModel({
    required String id,
    required String firstName,
    required String lastName,
    required String rut,
  }) : super(id: id, firstName: firstName, lastName: lastName, rut: rut);

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        id: json["id"] == null ? '' : json["id"].toString(),
        firstName:
            json["firstName"] == null ? '' : json["firstName"].toString(),
        lastName: json["lastName"] == null ? '' : json["lastName"].toString(),
        rut: json["rut"] == null ? '' : json["rut"].toString(),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "firstName": firstName,
        "lastName": lastName,
        "rut": rut,
      };
}
