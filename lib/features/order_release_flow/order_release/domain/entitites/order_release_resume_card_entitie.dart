import 'package:equatable/equatable.dart';

class ResumeCardEntitie extends Equatable {
  const ResumeCardEntitie({
    required this.id,
    required this.number,
    required this.typeId,
    required this.typeName,
  });

  final String id;
  final String number;
  final int typeId;
  final String typeName;

  @override
  List<Object?> get props => [id, number, typeId, typeName];
}
