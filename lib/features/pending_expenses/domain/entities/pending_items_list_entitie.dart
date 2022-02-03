import 'package:equatable/equatable.dart';
import 'package:kcc_mobile_app/shared/domain/entitie/pagination_entitie.dart';

import 'pending_expenses_entitie.dart';

class PendingExpensesListEntitie extends Equatable {
  const PendingExpensesListEntitie({
    required this.pagination,
    required this.data,
  });

  final PaginationEntitie pagination;
  final List<PendingExpensesEntitie> data;
  @override
  List<Object?> get props => [pagination, data];
}
