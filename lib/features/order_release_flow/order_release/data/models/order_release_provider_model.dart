import 'package:kcc_mobile_app/features/order_release_flow/order_release/domain/entitites/order_release_provider_entitie.dart';

class ProviderModel extends ProviderEntitie {
  const ProviderModel({
    required String providerName,
    required int providerId,
    required String typeProvider,
  }) : super(
            providerId: providerId,
            providerName: providerName,
            typeProvider: typeProvider);

  factory ProviderModel.fromJson(Map<String, dynamic> json) => ProviderModel(
        providerName: json["providerName"].toString(),
        providerId: json["providerID"] as int,
        typeProvider: json["type-provider"].toString(),
      );

  Map<String, dynamic> toJson() => {
        "providerName": providerName,
        "providerID": providerId,
        "type-provider": typeProvider,
      };
}
