import 'package:equatable/equatable.dart';

class CurrencyEntitie extends Equatable {
  const CurrencyEntitie({
    required this.code,
    required this.name,
  });

  final String code;
  final String name;

  @override
  List<Object?> get props => [code, name];
}
