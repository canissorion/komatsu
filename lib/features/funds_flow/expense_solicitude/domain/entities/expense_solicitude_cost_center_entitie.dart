import 'package:equatable/equatable.dart';

class CostCenterEntitie extends Equatable {
  final int code;
  final String name;

  const CostCenterEntitie({
    required this.code,
    required this.name,
  });

  @override
  List<Object?> get props => [code, name];
}
