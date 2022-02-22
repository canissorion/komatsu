import '../../domain/entities/new_expense_currency_entitie.dart';

class CurrencyModel extends CurrencyEntitie {
  const CurrencyModel({
    required String currencyCode,
    required int currencyAmount,
  }) : super(currencyAmount: currencyAmount, currencyCode: currencyCode);

  factory CurrencyModel.fromJson(Map<String, dynamic> json) => CurrencyModel(
        currencyCode: json["currencyCode"].toString(),
        currencyAmount: json["currencyAmount"] as int,
      );

  Map<String, dynamic> toJson() => {
        "currencyCode": currencyCode,
        "currencyAmount": currencyAmount,
      };
}
