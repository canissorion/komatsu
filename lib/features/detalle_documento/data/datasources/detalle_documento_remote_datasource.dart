import 'package:dio/dio.dart';
import 'package:flutter/services.dart';

import '../models/documento_model.dart';

abstract class DetalleDocumentoRemoteDataSource {
  Future<DocumentoModel> getDocumento();
}

class DetalleDocumentoRemoteDataSourceImpl
    implements DetalleDocumentoRemoteDataSource {
  late final Dio client;

  DetalleDocumentoRemoteDataSourceImpl({required this.client});
  @override
  Future<DocumentoModel> getDocumento() async {
    late String response;
    await Future.delayed(const Duration(seconds: 2), () async {
      response = await rootBundle.loadString("assets/json/documento.json");
    });
    return documentoFromJson(response);
  }
}
