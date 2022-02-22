import 'package:equatable/equatable.dart';

class ProviderEntitie extends Equatable {
  const ProviderEntitie({
    required this.providerName,
    required this.providerId,
    required this.typeProvider,
  });

  final String providerName;
  final int providerId;
  final String typeProvider;

  @override
  List<Object?> get props => [providerId, providerName, typeProvider];
}
