import 'dart:convert';

import 'package:kcc_mobile_app/shared/data/model/pagination_model.dart';

import '../../domain/entities/pending_items_list_entitie.dart';
import 'pending_expenses_model.dart';

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
          // ignore: avoid_dynamic_calls
          json["data"].map(
            (x) => PendingExpensesModel.fromJson(x as Map<String, dynamic>),
          ) as Iterable<dynamic>,
        ),
      );
}
