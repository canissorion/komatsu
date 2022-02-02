import 'package:kcc_mobile_app/shared/entitie/pagination_entitie.dart';

class PaginationModel extends PaginationEntitie {
  const PaginationModel({
    required String pageNumber,
    required String pageSize,
    required int totalRecords,
  }) : super(
          pageNumber: pageNumber,
          pageSize: pageSize,
          totalRecords: totalRecords,
        );

  factory PaginationModel.fromJson(Map<String, dynamic> json) =>
      PaginationModel(
        pageNumber:
            json["pageNumber"] == null ? '' : json["pageNumber"] as String,
        pageSize: json["pageSize"] == null ? '' : json["pageSize"] as String,
        totalRecords:
            json["totalRecords"] == null ? 0 : json["totalRecords"] as int,
      );
}
