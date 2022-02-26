import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:kcc_mobile_app/core/error/exceptions.dart';
import 'package:kcc_mobile_app/features/expenses_flow/new_expense/data/models/new_expense_model.dart';

abstract class NewExpenseRemoteDataSource {
  Future<NewExpenseModel> getNewExpense();
}

class NewExpenseRemoteDataSourceImpl implements NewExpenseRemoteDataSource {
  late final Dio client;
  final String url = dotenv.env['serverNewExpenses']!;

  NewExpenseRemoteDataSourceImpl({required this.client});

  @override
  Future<NewExpenseModel> getNewExpense() async {
    final response = await client.get(
      '$url/v1/domain-parameters',
      options: Options(headers: {'authorization': 1}),
    );
    if (response.statusCode == 200) {
      return newExpenseFromJson(json.encode(response.data));
    } else {
      throw ServerException();
    }
  }
}
