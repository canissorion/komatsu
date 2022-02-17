import 'package:equatable/equatable.dart';

class CurrencyEntitie extends Equatable {
  const CurrencyEntitie({
    required this.code,
    required this.amount,
  });

  final String code;
  final int amount;

  @override
  List<Object?> get props => [code, amount];
}
