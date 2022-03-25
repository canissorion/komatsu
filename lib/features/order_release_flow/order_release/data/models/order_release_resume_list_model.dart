// To parse this JSON data, do
//
//     final orderReleaceResumeList = orderReleaceResumeListFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_release_resume_list_model.freezed.dart';
part 'order_release_resume_list_model.g.dart';

OrderReleaceResumeList orderReleaceResumeListFromJson(String str) =>
    OrderReleaceResumeList.fromJson(json.decode(str) as Map<String, dynamic>);

@freezed
class OrderReleaceResumeList with _$OrderReleaceResumeList {
  const factory OrderReleaceResumeList({
    List<Datum>? data,
    bool? isArray,
    String? path,
    String? duration,
    String? method,
    Pagination? pagination,
  }) = _OrderReleaceResumeList;

  factory OrderReleaceResumeList.fromJson(Map<String, dynamic> json) =>
      _$OrderReleaceResumeListFromJson(json);
}

@freezed
class Datum with _$Datum {
  const factory Datum({
    String? purchaseOrderId,
    String? freeNumber,
    int? recordDate,
    String? orderNumber,
    String? urgentNeed,
    String? buyGroup,
    String? taxType,
    double? totalAmount,
    String? currency,
    String? providerId,
    String? providerName,
    String? centerId,
    String? centerName,
    String? applicant,
    String? requirementTrackingNumber,
    String? purchasingOrganization,
    String? liberatingUser,
    String? orderPriority,
    String? response,
    String? reason,
  }) = _Datum;

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);
}

@freezed
class Pagination with _$Pagination {
  const factory Pagination({
    String? pageNumber,
    String? pageSize,
    int? itemCount,
    int? pageCount,
    bool? hasPreviousPage,
    bool? hasNextPage,
  }) = _Pagination;

  factory Pagination.fromJson(Map<String, dynamic> json) =>
      _$PaginationFromJson(json);
}
