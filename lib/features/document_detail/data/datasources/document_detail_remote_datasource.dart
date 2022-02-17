import 'package:dio/dio.dart';
import 'package:flutter/services.dart';

import '../models/document_model.dart';

abstract class DocumentDetailRemoteDataSource {
  Future<DocumentModel> getDocument();
}

class DocumentDetailRemoteDataSourceImpl
    implements DocumentDetailRemoteDataSource {
  late final Dio client;

  DocumentDetailRemoteDataSourceImpl({required this.client});
  @override
  Future<DocumentModel> getDocument() async {
    late String response;
    await Future.delayed(const Duration(seconds: 2), () async {
      response = await rootBundle.loadString("assets/json/documento.json");
    });
    return documentoFromJson(response);
  }
}
