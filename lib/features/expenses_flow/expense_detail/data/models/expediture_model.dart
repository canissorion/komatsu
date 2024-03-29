// ignore_for_file: avoid_dynamic_calls

import '../../domain/entities/expediture_entitie.dart';

class ExpeditureModel extends ExpeditureEntitie {
  const ExpeditureModel({
    required String reason,
    required double amount,
    required double taxes,
    required int retentionAmount,
    required int vales,
    required double balancePayable,
  }) : super(
          reason: reason,
          amount: amount,
          taxes: taxes,
          retentionAmount: retentionAmount,
          vales: vales,
          balancePayable: balancePayable,
        );

  factory ExpeditureModel.fromJson(Map<String, dynamic> json) =>
      ExpeditureModel(
        reason: json["reason"] == null ? '' : json["reason"] as String,
        amount:
            json["amount"] == null ? 0 : json["amount"].toDouble() as double,
        taxes: json["taxes"] == null ? 0 : json["taxes"].toDouble() as double,
        retentionAmount: json["retentionAmount"] == null
            ? 0
            : json["retentionAmount"] as int,
        vales: json["vales"] == null ? 0 : json["vales"] as int,
        balancePayable: json["balancePayable"] == null
            ? 0
            : json["balancePayable"].toDouble() as double,
      );
}
