import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import '../../../../core/error/exceptions.dart';
import '../models/pending_expenses_model.dart';
import '../models/pending_items_list_model.dart';

abstract class PendingDocumentDetailRemoteDataSource {
  Future<PendingExpensesModel> getPendingApprove();
  Future<PendingExpensesListModel> getPendingDocumentListDetail();
}

class PendingDocumentDetailRemoteDataSourceImpl
    implements PendingDocumentDetailRemoteDataSource {
  late final Dio details;
  final String url = dotenv.env['server']!;

  PendingDocumentDetailRemoteDataSourceImpl({required this.details});

  @override
  Future<PendingExpensesModel> getPendingApprove() async {
    final response = await details.get(
      '$url/cross/mobile/documents/extracts?status=approved&documentTypeId=1&pageNumber=1&pageSize=15',
      options: Options(headers: {'authorization': 1}),
    );
    if (response.statusCode == 200) {
      return pendingExpensesModelFromJson(json.encode(response.data));
    } else {
      throw ServerException();
    }
  }

  @override
  Future<PendingExpensesListModel> getPendingDocumentListDetail() async {
    final response = await details.get(
      '$url/expenses/mobile/documents/0c20ca3d-361e-41fa-93d0-1ed6f0d87694/subdocuments',
      options: Options(headers: {'authorization': 1}),
    );
    if (response.statusCode == 200) {
      return pendingExpensesListModelFromJson(json.encode(response.data));
    } else {
      throw ServerException();
    }
  }
}
