import 'dart:convert';

import '../../../../../shared/data/model/pagination_model.dart';

import '../../domain/entities/approval_history_list_entitie.dart';
import 'approval_data_model.dart';

ApprovalsHistoryModel approvalsHistoryFromJson(String str) =>
    ApprovalsHistoryModel.fromJson(json.decode(str) as Map<String, dynamic>);

class ApprovalsHistoryModel extends ApprovalsHistoryListEntitie {
  const ApprovalsHistoryModel({
    required PaginationModel pagination,
    required ApprovalDataModel data,
  }) : super(pagination: pagination, data: data);

  factory ApprovalsHistoryModel.fromJson(Map<String, dynamic> json) =>
      ApprovalsHistoryModel(
        pagination: PaginationModel.fromJson(
          json["pagination"] as Map<String, dynamic>,
        ),
        data: ApprovalDataModel.fromJson(json["data"] as Map<String, dynamic>),
      );

  /*Map<String, dynamic> toJson() => {
        "pagination": pagination.toJson(),
        "data": data.toJson(),
      };*/
}
