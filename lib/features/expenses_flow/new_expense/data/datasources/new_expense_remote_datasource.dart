// ignore_for_file: unused_import

import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import '../../../../../core/error/exceptions.dart';
import '../models/new_expense_model.dart';

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
