import '../../domain/entities/expense_solicitude_authotizer_entitie.dart';

class AuthorizerModel extends AuthorizerEntitie {
  const AuthorizerModel({
    required String id,
    required String firstName,
    required String lastName,
  }) : super(id: id, firstName: firstName, lastName: lastName);

  factory AuthorizerModel.fromJson(Map<String, dynamic> json) =>
      AuthorizerModel(
        id: json["id"].toString(),
        // ignore: prefer_if_null_operators
        firstName: json["firstName"].toString(),
        lastName: json["lastName"].toString(),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "firstName": firstName,
        "lastName": lastName,
      };
}
