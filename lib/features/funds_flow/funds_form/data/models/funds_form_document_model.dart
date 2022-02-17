import '../../domain/entities/funds_form_document_entitie.dart';

class DocumentModel extends DocumentEntitie {
  const DocumentModel({
    required int id,
    required String name,
  }) : super(id: id, name: name);

  factory DocumentModel.fromJson(Map<String, dynamic> json) => DocumentModel(
        id: json["id"] == null ? 0 : json["id"] as int,
        name: json["name"] == null ? '' : json["name"].toString(),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
      };
}
