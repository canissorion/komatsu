import 'package:dio/dio.dart';
import 'package:flutter/services.dart';
import '../models/detalle_rendicion_model.dart';

abstract class DetalleRendicionRemoteDataSource {
  Future<DetalleRendicionModel> getDetalleRendicion();
}

class DetalleRendicionRemoteDataSourceImpl
    implements DetalleRendicionRemoteDataSource {
  late final Dio client;

  DetalleRendicionRemoteDataSourceImpl({required this.client});
  @override
  Future<DetalleRendicionModel> getDetalleRendicion() async {
    late String response;
    await Future.delayed(const Duration(seconds: 1), () async {
      response = await rootBundle.loadString("assets/json/detalle.json");
    });
    return detalleRendicionFromJson(response);
  }
}
