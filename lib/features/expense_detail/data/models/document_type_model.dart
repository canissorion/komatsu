import 'package:kcc_mobile_app/features/expense_detail/domain/entities/document_type_entitie.dart';

class DocumentTypeModel extends DocumentTypeEntitie {
  const DocumentTypeModel({
    required int id,
    required String name,
  }) : super(id: id, name: name);

  factory DocumentTypeModel.fromJson(Map<String, dynamic> json) =>
      DocumentTypeModel(
        id: json["id"] as int,
        name: json["name"] == null ? '' : json["name"] as String,
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "name": name == null ? null : name,
      };
}
