import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:kcc_mobile_app/core/error/exceptions.dart';

import '../models/approval_history_list_model.dart';

abstract class ApprovalsHistoryRemoteDataSource {
  Future<ApprovalsHistoryModel> getApprovalsHistoryList();
}

class ApprovalsHistoryRemoteDataSourceImpl
    implements ApprovalsHistoryRemoteDataSource {
  late final Dio client;
  final String url = dotenv.env['server']!;

  ApprovalsHistoryRemoteDataSourceImpl({required this.client});

  @override
  Future<ApprovalsHistoryModel> getApprovalsHistoryList() async {
    final response = await client.get(
      '$url/expenses/mobile/documents/0c20ca3d-361e-41fa-93d0-1ed6f0d87694/approvals?pageNumber=1&pageSize=15',
      options: Options(headers: {'authorization': 1}),
    );
    if (response.statusCode == 200) {
      return approvalsHistoryFromJson(json.encode(response.data));
    } else {
      throw ServerException();
    }
  }
}
