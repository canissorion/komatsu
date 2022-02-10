import 'package:equatable/equatable.dart';
import 'package:kcc_mobile_app/shared/domain/entitie/pagination_entitie.dart';

import 'approval_data_entitie.dart';

class ApprovalsHistoryListEntitie extends Equatable {
  final PaginationEntitie pagination;
  final ApprovalDataEntitie data;

  const ApprovalsHistoryListEntitie({
    required this.pagination,
    required this.data,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [pagination, data];
}
