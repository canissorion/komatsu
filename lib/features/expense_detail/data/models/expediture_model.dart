// ignore_for_file: avoid_dynamic_calls

import 'package:kcc_mobile_app/features/expense_detail/domain/entities/expediture_entitie.dart';

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

  Map<String, dynamic> toJson() => {
        "reason": reason == null ? null : reason,
        "amount": amount == null ? null : amount,
        "taxes": taxes == null ? null : taxes,
        "retentionAmount": retentionAmount == null ? null : retentionAmount,
        "vales": vales == null ? null : vales,
        "balancePayable": balancePayable == null ? null : balancePayable,
      };
}
