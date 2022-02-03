import 'package:equatable/equatable.dart';

class DocumentPendingExpensesEntitie extends Equatable {
  final String id;
  final String number;
  final int typeId;
  final String typeName;

  const DocumentPendingExpensesEntitie({
    required this.id,
    required this.number,
    required this.typeId,
    required this.typeName,
  });

  @override
  List<Object?> get props => [id, number, typeId, typeName];
}
