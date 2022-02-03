import '../../domain/entities/document_pending_expenses_entitie.dart';

class DocumentPendingExpensesModel extends DocumentPendingExpensesEntitie {
  const DocumentPendingExpensesModel({
    required String id,
    required String number,
    required int typeId,
    required String typeName,
  }) : super(id: id, number: number, typeId: typeId, typeName: typeName);

  factory DocumentPendingExpensesModel.fromJson(Map<String, dynamic> json) =>
      DocumentPendingExpensesModel(
        id: json["id"] == null ? '' : json["id"].toString(),
        number: json["number"] == null ? '' : json["number"].toString(),
        typeId: json["typeId"] == null ? 0 : json["typeId"] as int,
        typeName: json["typeName"] == null ? '' : json["typeName"].toString(),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "number": number,
        "typeId": typeId,
        "typeName": typeName,
      };
}
