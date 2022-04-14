import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import '../../../../../core/error/exceptions.dart';
import '../models/order_release_resume_list_model.dart';

abstract class OrderReleaseRemoteDataSource {
  //Future<PendingExpensesModel> getPendingApprove();
  Future<OrderReleaceResumeList> getOrderRelease();
}

class OrderReleaseRemoteDataSourceImpl implements OrderReleaseRemoteDataSource {
  late final Dio client;
  final String url = dotenv.env['serverOrderRelease']!;
  OrderReleaseRemoteDataSourceImpl({required this.client});

  @override
  Future<OrderReleaceResumeList> getOrderRelease() async {
    final response = await client.get(
      '$url/purchase-orders?order=ASC&pageNumber=1&pageSize=10',
      options: Options(headers: {'authorization': 1}),
    );
    if (response.statusCode == 200) {
      return orderReleaceResumeListFromJson(json.encode(response.data));
    } else {
      throw ServerException();
    }
  }
}
