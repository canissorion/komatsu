import 'package:dio/dio.dart';
import 'package:flutter/services.dart';
import '../models/approvals_history_funds_model.dart';

abstract class ApprovalsHistoryFundsRemoteDataSource {
  //Future<PendingExpensesModel> getPendingApprove();
  Future<ApprovalsHistoryFundsModel> getApprovalsHistoryFunds();
}

class ApprovalsHistoryFundsRemoteDataSourceImpl
    implements ApprovalsHistoryFundsRemoteDataSource {
  late final Dio client;

  ApprovalsHistoryFundsRemoteDataSourceImpl({required this.client});

  @override
  Future<ApprovalsHistoryFundsModel> getApprovalsHistoryFunds() async {
    final String response =
        await rootBundle.loadString("assets/json/history.json");
    return approvalsHistoryFundsFromJson(response);
  }
}
