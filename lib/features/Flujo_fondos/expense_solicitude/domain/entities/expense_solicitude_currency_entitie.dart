import 'package:equatable/equatable.dart';

class CurrencyEntitie extends Equatable {
  const CurrencyEntitie({
    required this.code,
    required this.amount,
  });

  final String code;
  final int amount;

  @override
  // TODO: implement props
  List<Object?> get props => [code, amount];
}
