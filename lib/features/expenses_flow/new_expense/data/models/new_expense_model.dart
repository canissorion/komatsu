// ignore_for_file: avoid_dynamic_calls

import 'dart:convert';

import '../../domain/entities/new_expense_entitie.dart';
import 'new_expense_data_model.dart';

NewExpenseModel newExpenseFromJson(String str) =>
    NewExpenseModel.fromJson(json.decode(str) as Map<String, dynamic>);

class NewExpenseModel extends NewExpenseEntitie {
  const NewExpenseModel({
    required List<DataModel> data,
  }) : super(data: data);

  factory NewExpenseModel.fromJson(Map<String, dynamic> json) =>
      NewExpenseModel(
        data: List<DataModel>.from(
          json["data"].map((x) => DataModel.fromJson(x as Map<String, dynamic>))
              as Iterable<dynamic>,
        ),
      );
}
