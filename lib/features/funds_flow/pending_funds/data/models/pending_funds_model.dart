import 'dart:convert';

import '../../domain/entities/pending_funds_entitie.dart';

PendingFundsDetailModel pendingFundsDetailFromJson(String str) =>
    PendingFundsDetailModel.fromJson(json.decode(str) as Map<String, dynamic>);

String pendingFundsDetailToJson(PendingFundsDetailModel data) =>
    json.encode(data.toJson());

class PendingFundsDetailModel extends PendingFundsDetailEntitie {
  const PendingFundsDetailModel({
    required String number,
    required String typeName,
    required int creationDate,
    required String firstName,
    required String lastName,
    required String priority,
    required int generalStatus,
  }) : super(
          number: number,
          typeName: typeName,
          creationDate: creationDate,
          firstName: firstName,
          lastName: lastName,
          priority: priority,
          generalStatus: generalStatus,
        );

  factory PendingFundsDetailModel.fromJson(Map<String, dynamic> json) =>
      PendingFundsDetailModel(
        number: json["number"] as String,
        typeName: json["typeName"] as String,
        creationDate: json["creationDate"] as int,
        firstName: json["firstName"] as String,
        lastName: json["lastName"] as String,
        priority: json["priority"] as String,
        generalStatus: json["generalStatus"] as int,
      );

  Map<String, dynamic> toJson() => {
        "number": number,
        "typeName": typeName,
        "creationDate": creationDate,
        "firstName": firstName,
        "lastName": lastName,
        "priority": priority,
        "generalStatus": generalStatus
      };
}
