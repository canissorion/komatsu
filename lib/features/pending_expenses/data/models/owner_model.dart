import '../../domain/entities/owner_entitie.dart';

class OwnerModel extends OwnerEntitie {
  const OwnerModel({
    required String id,
    required String firstName,
    required String lastName,
  }) : super(id: id, firstName: firstName, lastName: lastName);

  factory OwnerModel.fromJson(Map<String, dynamic> json) => OwnerModel(
        id: json["id"] == null ? '' : json["id"] as String,
        firstName: json["firstName"] == null ? '' : json["firstName"] as String,
        lastName: json["lastName"] == null ? '' : json["lastName"] as String,
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "firstName": firstName,
        "lastName": lastName,
      };
}
