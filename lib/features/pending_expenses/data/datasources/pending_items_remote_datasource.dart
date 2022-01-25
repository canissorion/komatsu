import 'package:dio/dio.dart';
import 'package:flutter/services.dart';

import '../models/pending_items_model.dart';

abstract class PendingDocumentDetailRemoteDataSource {
  Future<PendingItemsModel> getPendingApprove();
}

class PendingDocumentDetailRemoteDataSourceImpl
    implements PendingDocumentDetailRemoteDataSource {
  late final Dio details;

  PendingDocumentDetailRemoteDataSourceImpl({required this.details});
  @override
  Future<PendingItemsModel> getPendingApprove() async {
    late String response;
    await Future.delayed(const Duration(seconds: 2), () async {
      response = await rootBundle.loadString("assets/json/pending_items.json");
    });
    return documentoFromJson(response);
  }
}
