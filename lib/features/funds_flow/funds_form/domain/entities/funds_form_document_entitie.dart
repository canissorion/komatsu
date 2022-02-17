import 'package:equatable/equatable.dart';

class DocumentEntitie extends Equatable {
  const DocumentEntitie({
    required this.id,
    required this.name,
  });

  final int id;
  final String name;

  @override
  List<Object?> get props => [id, name];
}
