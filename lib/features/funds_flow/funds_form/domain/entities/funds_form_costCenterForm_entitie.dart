import 'package:equatable/equatable.dart';

class CostCenterFormEntitie extends Equatable {
  const CostCenterFormEntitie({
    required this.code,
    required this.name,
  });

  final int code;
  final String name;

  @override
  // TODO: implement props
  List<Object?> get props => [code, name];
}
