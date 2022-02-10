import 'package:equatable/equatable.dart';

class DocumentTypeEntitie extends Equatable {
  final int id;
  final String name;

  const DocumentTypeEntitie({
    required this.id,
    required this.name,
  });

  @override
  List<Object?> get props => [id, name];
}
