import 'package:dio/dio.dart';
import 'package:flutter/services.dart';
import '../models/expense_detail_model.dart';

abstract class ExpenseDetailRemoteDataSource {
  Future<ExpenseDetailModel> getExpenseDetail();
}

class ExpenseDetailRemoteDataSourceImpl
    implements ExpenseDetailRemoteDataSource {
  late final Dio client;

  ExpenseDetailRemoteDataSourceImpl({required this.client});
  @override
  Future<ExpenseDetailModel> getExpenseDetail() async {
    late String response;
    await Future.delayed(const Duration(seconds: 1), () async {
      response = await rootBundle.loadString("assets/json/detalle.json");
    });
    return detalleRendicionFromJson(response);
  }
}
