import '../../domain/entities/currency_entitie.dart';

class CurrencyModel extends CurrencyEntitie {
  const CurrencyModel({
    required String code,
    required String name,
  }) : super(
          code: code,
          name: name,
        );

  factory CurrencyModel.fromJson(Map<String, dynamic> json) => CurrencyModel(
        code: json["code"] == null ? '' : json["code"] as String,
        name: json["name"] == null ? '' : json["name"] as String,
      );
}
