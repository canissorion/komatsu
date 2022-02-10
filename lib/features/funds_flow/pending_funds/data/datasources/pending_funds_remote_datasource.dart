import 'package:dio/dio.dart';
import 'package:flutter/services.dart';

import '../models/pending_funds_model.dart';

abstract class PendingFundsDetailRemoteDataSource {
  //Future<PendingExpensesModel> getPendingApprove();
  Future<PendingFundsDetailModel> getPendingFundsDetail();
}

class PendingFundsDetailRemoteDataSourceImpl
    implements PendingFundsDetailRemoteDataSource {
  late final Dio client;
  //final String url = dotenv.env['server']!;

  PendingFundsDetailRemoteDataSourceImpl({required this.client});

  /*@override
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
  }*/

  @override
  Future<PendingFundsDetailModel> getPendingFundsDetail() async {
    final String response =
        await rootBundle.loadString("assets/json/pending_items.json");
    return pendingFundsDetailFromJson(response);
  }
}
