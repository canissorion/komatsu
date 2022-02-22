import 'package:kcc_mobile_app/features/order_release_flow/order_release/domain/entitites/order_release_resume_card_entitie.dart';

class ResumeCardModel extends ResumeCardEntitie {
  const ResumeCardModel({
    required String id,
    required String number,
    required int typeId,
    required String typeName,
  }) : super(
          id: id,
          number: number,
          typeId: typeId,
          typeName: typeName,
        );

  factory ResumeCardModel.fromJson(Map<String, dynamic> json) =>
      ResumeCardModel(
        id: json["id"] as String,
        number: json["number"] as String,
        typeId: json["typeId"] as int,
        typeName: json["typeName"] as String,
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "number": number,
        "typeId": typeId,
        "typeName": typeName,
      };
}
