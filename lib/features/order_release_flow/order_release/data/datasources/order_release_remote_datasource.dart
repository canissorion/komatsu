import 'package:dio/dio.dart';
import 'package:flutter/services.dart';
import 'package:kcc_mobile_app/features/order_release_flow/order_release/data/models/order_release_model.dart';

abstract class OrderReleaseRemoteDataSource {
  //Future<PendingExpensesModel> getPendingApprove();
  Future<OrderReleaseModel> getOrderRelease();
}

class OrderReleaseRemoteDataSourceImpl implements OrderReleaseRemoteDataSource {
  late final Dio client;

  OrderReleaseRemoteDataSourceImpl({required this.client});

  @override
  Future<OrderReleaseModel> getOrderRelease() async {
    final String response =
        await rootBundle.loadString("assets/json/order_release.json");
    return orderReleaseFromJson(response);
  }
}
