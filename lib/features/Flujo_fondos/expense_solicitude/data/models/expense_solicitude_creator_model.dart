import '../../domain/entities/expense_solicitude_creator_entitie.dart';

class CreatorModel extends CreatorEntitie {
  const CreatorModel({
    required String id,
    required String rut,
    required String firstName,
    required String lastName,
  }) : super(id: id, rut: rut, firstName: firstName, lastName: lastName);

  factory CreatorModel.fromJson(Map<String, dynamic> json) => CreatorModel(
        id: json["id"].toString(),
        // ignore: prefer_if_null_operators
        rut: json["rut"].toString(),
        firstName: json["firstName"].toString(),
        lastName: json["lastName"].toString(),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "firstName": firstName,
        "lastName": lastName,
      };
}
