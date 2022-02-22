import 'package:equatable/equatable.dart';

class CurrencyEntitie extends Equatable {
  const CurrencyEntitie({
    required this.currencyCode,
    required this.currencyAmount,
  });

  final String currencyCode;
  final int currencyAmount;

  @override
  List<Object?> get props => [currencyAmount, currencyCode];
}
