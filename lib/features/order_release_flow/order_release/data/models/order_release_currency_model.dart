import '../../domain/entitites/order_release_currency_entitite.dart';

class CurrencyModel extends CurrencyEntitie {
  const CurrencyModel({
    required int totalAmount,
    required String code,
  }) : super(totalAmount: totalAmount, code: code);

  factory CurrencyModel.fromJson(Map<String, dynamic> json) => CurrencyModel(
        totalAmount: json["totalAmount"] as int,
        code: json["code"].toString(),
      );

  Map<String, dynamic> toJson() => {
        "totalAmount": totalAmount,
        "code": code,
      };
}
