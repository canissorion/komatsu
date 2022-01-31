import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:kcc_mobile_app/core/error/exceptions.dart';
import 'package:kcc_mobile_app/features/expense_detail/data/models/expense_detail_model.dart';
import 'package:kcc_mobile_app/features/expense_detail/data/models/sub_document_resume_list_model.dart';

abstract class ExpenseDetailRemoteDataSource {
  Future<ExpenseDetailModel> getExpenseDetail();
  Future<SubDocumentResumeListModel> getSubDocumentResumeList();
}

class ExpenseDetailRemoteDataSourceImpl
    implements ExpenseDetailRemoteDataSource {
  late final Dio client;
  final String url = dotenv.env['server']!;

  ExpenseDetailRemoteDataSourceImpl({required this.client});
  @override
  Future<ExpenseDetailModel> getExpenseDetail() async {
    final response = await client.get(
      '$url/expenses/mobile/documents/0c20ca3d-361e-41fa-93d0-1ed6f0d87694',
      options: Options(headers: {'authorization': 1}),
    );
    if (response.statusCode == 200) {
      return expenseDetailModelFromJson(json.encode(response.data));
    } else {
      throw ServerException();
    }
  }

  @override
  Future<SubDocumentResumeListModel> getSubDocumentResumeList() async {
    final response = await client.get(
      '$url/expenses/mobile/documents/0c20ca3d-361e-41fa-93d0-1ed6f0d87694/subdocuments',
      options: Options(headers: {'authorization': 1}),
    );
    if (response.statusCode == 200) {
      return subDocumentResumeListModelFromJson(json.encode(response.data));
    } else {
      throw ServerException();
    }
  }
}
