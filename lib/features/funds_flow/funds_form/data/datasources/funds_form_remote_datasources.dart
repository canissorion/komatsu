import 'package:dio/dio.dart';
import 'package:flutter/services.dart';

import '../models/funds_form_model.dart';

abstract class FundsFormRemoteDataSource {
  Future<FundsFormModel> getFundsForm();
}

class FundsFormRemoteDataSourceImpl implements FundsFormRemoteDataSource {
  late final Dio client;

  FundsFormRemoteDataSourceImpl({required this.client});

  @override
  Future<FundsFormModel> getFundsForm() async {
    final String response =
        await rootBundle.loadString("assets/json/funds_form.json");
    return fundsFormFromJson(response);
  }
}
