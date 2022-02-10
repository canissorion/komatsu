import '../../domain/entities/expense_solicitude_currency_entitie.dart';

class CurrencyModel extends CurrencyEntitie {
  const CurrencyModel({
    required String code,
    required int amount,
  }) : super(code: code, amount: amount);

  factory CurrencyModel.fromJson(Map<String, dynamic> json) => CurrencyModel(
        code: json["code"].toString(),
        amount: json["amount"] as int,
      );

  Map<String, dynamic> toJson() => {
        "code": code,
        "amount": amount,
      };
}
