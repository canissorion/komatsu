import '../../domain/entities/expense_solicitude_document_type_entitie.dart';

class DocumentTypeModel extends DocumentTypeEntitie {
  const DocumentTypeModel({
    required int id,
    required String name,
  }) : super(id: id, name: name);

  factory DocumentTypeModel.fromJson(Map<String, dynamic> json) =>
      DocumentTypeModel(
        id: json["id"] as int,
        name: json["name"].toString(),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
      };
}
