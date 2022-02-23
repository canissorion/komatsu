import 'package:equatable/equatable.dart';

class CenterEntitie extends Equatable {
  const CenterEntitie({
    required this.centerId,
    required this.centerName,
  });

  final int centerId;
  final String centerName;

  @override
  // TODO: implement props
  List<Object?> get props => [centerId, centerName];
}
