import 'package:equatable/equatable.dart';
import '../../../../../shared/data/model/pagination_model.dart';

import 'pending_expenses_entitie.dart';

class PendingExpensesListEntitie extends Equatable {
  const PendingExpensesListEntitie({
    required this.pagination,
    required this.data,
  });

  final PaginationModel pagination;
  final List<PendingExpensesEntitie> data;
  @override
  List<Object?> get props => [pagination, data];
}
