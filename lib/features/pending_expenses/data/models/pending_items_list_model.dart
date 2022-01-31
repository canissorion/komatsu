import 'dart:convert';

import 'package:kcc_mobile_app/core/utils/datetime_convert.dart';
import 'package:kcc_mobile_app/features/pending_expenses/data/models/pending_expenses_model.dart';
import 'package:kcc_mobile_app/features/pending_expenses/domain/entities/pending_items_list_entitie.dart';
import 'package:kcc_mobile_app/shared/data/model/pagination_model.dart';

PendingExpensesListModel pendingExpensesListModelFromJson(String str) =>
    PendingExpensesListModel.fromJson(json.decode(str) as Map<String, dynamic>);

class PendingExpensesListModel extends PendingExpensesListEntitie {
  const PendingExpensesListModel({
    required PaginationModel pagination,
    required List<PendingExpensesModel> data,
  }) : super(pagination: pagination, data: data);

  factory PendingExpensesListModel.fromJson(Map<String, dynamic> json) =>
      PendingExpensesListModel(
        pagination: PaginationModel.fromJson(
          json["pagination"] as Map<String, dynamic>,
        ),
        data: List<PendingExpensesModel>.from(
          json["data"].map(
            (x) => PendingExpensesModel.fromJson(x as Map<String, dynamic>),
          ) as Iterable<dynamic>,
        ),
      );
}
