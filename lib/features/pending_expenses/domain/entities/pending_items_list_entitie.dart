import 'package:equatable/equatable.dart';
import '../../../../shared/entitie/pagination_entitie.dart';

import 'pending_expenses_entitie.dart';

class PendingExpensesListEntitie extends Equatable {
  final PaginationEntitie pagination;
  final List<PendingExpensesEntitie> data;

  const PendingExpensesListEntitie({
    required this.pagination,
    required this.data,
  });

  @override
  List<Object?> get props => [pagination, data];
}
