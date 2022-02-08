import 'package:equatable/equatable.dart';

import '../../../../shared/domain/entitie/pagination_entitie.dart';
import 'sub_document_resume_entitie.dart';

class SubDocumentResumeListEntitie extends Equatable {
  const SubDocumentResumeListEntitie({
    required this.pagination,
    required this.data,
  });

  final PaginationEntitie pagination;
  final List<SubDocumentResumeEntitie> data;
  @override
  List<Object?> get props => [pagination, data];
}
