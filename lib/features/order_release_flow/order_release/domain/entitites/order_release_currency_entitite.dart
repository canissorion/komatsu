import 'package:equatable/equatable.dart';

class CurrencyEntitie extends Equatable {
  const CurrencyEntitie({
    required this.totalAmount,
    required this.code,
  });

  final int totalAmount;
  final String code;

  @override
  List<Object?> get props => [totalAmount, code];
}
