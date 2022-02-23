import 'package:dio/dio.dart';
import 'package:flutter/services.dart';
import '../models/new_expense_model.dart';

abstract class NewExpenseRemoteDataSource {
  Future<NewExpenseModel> getNewExpense();
}

class NewExpenseRemoteDataSourceImpl implements NewExpenseRemoteDataSource {
  late final Dio client;

  NewExpenseRemoteDataSourceImpl({required this.client});

  @override
  Future<NewExpenseModel> getNewExpense() async {
    final String response =
        await rootBundle.loadString("assets/json/new_expense.json");
    return newExpenseFromJson(response);
  }
}
