import 'package:kcc_mobile_app/shared/entitie/pagination_entitie.dart';

class PaginationModel extends PaginationEntitie {
  PaginationModel({
    required String pageNumber,
    required String pageSize,
    required int totalRecords,
  }) : super(
            pageNumber: pageNumber,
            pageSize: pageSize,
            totalRecords: totalRecords);

  factory PaginationModel.fromJson(Map<String, dynamic> json) =>
      PaginationModel(
        pageNumber: json["pageNumber"] as String,
        pageSize: json["pageSize"] as String,
        totalRecords: json["totalRecords"] as int,
      );
}
