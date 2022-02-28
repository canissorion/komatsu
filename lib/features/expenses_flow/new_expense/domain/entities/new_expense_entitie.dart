import 'package:equatable/equatable.dart';
import 'new_expense_data_entitie.dart';

class NewExpenseEntitie extends Equatable {
  const NewExpenseEntitie({
    required this.data,
  });

  final List<DataEntitie> data;

  @override
  List<Object?> get props => [data];
}
