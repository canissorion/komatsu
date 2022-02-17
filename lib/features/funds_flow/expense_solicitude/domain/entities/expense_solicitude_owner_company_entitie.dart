import 'package:equatable/equatable.dart';

class OwnersCompanyEntitie extends Equatable {
  final String code;
  final String name;

  const OwnersCompanyEntitie({
    required this.code,
    required this.name,
  });

  @override
  List<Object?> get props => [code, name];
}
