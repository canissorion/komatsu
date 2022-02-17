import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:kcc_mobile_app/core/error/exceptions.dart';

import '../models/pending_expenses_model.dart';
import '../models/pending_items_list_model.dart';

abstract class PendingDocumentDetailRemoteDataSource {
  //Future<PendingExpensesModel> getPendingApprove();
  Future<PendingExpensesListModel> getPendingDocumentListDetail();
}

class PendingDocumentDetailRemoteDataSourceImpl
    implements PendingDocumentDetailRemoteDataSource {
  late final Dio client;
  final String url = dotenv.env['server']!;

  PendingDocumentDetailRemoteDataSourceImpl({required this.client});

  @override
  Future<PendingExpensesListModel> getPendingDocumentListDetail() async {
    final response = await client.get(
      '$url/cross/mobile/documents/extracts?status=approved&documentTypeId=1&pageNumber=1&pageSize=15',
      options: Options(headers: {'authorization': 1}),
    );
    if (response.statusCode == 200) {
      return pendingExpensesListModelFromJson(json.encode(response.data));
    } else {
      throw ServerException();
    }
  }
}
