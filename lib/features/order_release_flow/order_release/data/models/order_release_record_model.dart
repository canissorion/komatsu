import 'package:kcc_mobile_app/features/order_release_flow/order_release/domain/entitites/order_release_record_entitie.dart';

class RecordModel extends RecordEntitie {
  const RecordModel({
    required int recordDate,
    required int orderNumber,
    required String urgency,
    required int grpOrder,
  }) : super(
          recordDate: recordDate,
          orderNumber: orderNumber,
          urgency: urgency,
          grpOrder: grpOrder,
        );

  factory RecordModel.fromJson(Map<String, dynamic> json) => RecordModel(
        recordDate: json["recordDate"] as int,
        orderNumber: json["orderNumber"] as int,
        urgency: json["urgency"].toString(),
        grpOrder: json["grpOrder"] as int,
      );

  Map<String, dynamic> toJson() => {
        "recordDate": recordDate,
        "orderNumber": orderNumber,
        "urgency": urgency,
        "grpOrder": grpOrder,
      };
}
