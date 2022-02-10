import 'package:dio/dio.dart';
import 'package:flutter/services.dart';
import '../models/expense_solicitude_model.dart';

abstract class ExpenseSolicitudeRemoteDataSource {
  //Future<PendingExpensesModel> getPendingApprove();
  Future<ExpenseSolicitudeModel> getExpenseSolicitude();
}

class ExpenseSolicitudeRemoteDataSourceImpl
    implements ExpenseSolicitudeRemoteDataSource {
  late final Dio client;

  ExpenseSolicitudeRemoteDataSourceImpl({required this.client});

  @override
  Future<ExpenseSolicitudeModel> getExpenseSolicitude() async {
    final String response =
        await rootBundle.loadString("assets/json/funds_solicitude.json");
    return expenseSolicitudeFromJson(response);
  }
}
