import 'package:equatable/equatable.dart';

class AttachmentEntitie extends Equatable {
  const AttachmentEntitie({
    required this.id,
    required this.mimeType,
    required this.name,
  });

  final String id;
  final String mimeType;
  final String name;

  @override
  List<Object?> get props => [id, mimeType, name];
}
