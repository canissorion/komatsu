import 'package:dio/dio.dart';
import 'package:flutter/services.dart';
import '../models/pending_items_model.dart';

abstract class DocumentPendingApproveRemoteDataSource {
  Future<PendingItemsModel> getPendingApprove();
}

class DocumentPendingApproveRemoteDataSourceImpl
    implements DocumentPendingApproveRemoteDataSource {
  late final Dio details;

  DocumentPendingApproveRemoteDataSourceImpl({required this.details});
  @override
  Future<PendingItemsModel> getPendingApprove() async {
    late String response;
    await Future.delayed(const Duration(seconds: 2), () async {
      response = await rootBundle.loadString("assets/json/pending_items.json");
    });
    return documentoFromJson(response);
  }
}
