// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'order_release_resume_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OrderReleaceResumeList _$$_OrderReleaceResumeListFromJson(
  Map<String, dynamic> json,
) =>
    _$_OrderReleaceResumeList(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
      isArray: json['isArray'] as bool?,
      path: json['path'] as String?,
      duration: json['duration'] as String?,
      method: json['method'] as String?,
      pagination: json['pagination'] == null
          ? null
          : Pagination.fromJson(json['pagination'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_OrderReleaceResumeListToJson(
  _$_OrderReleaceResumeList instance,
) =>
    <String, dynamic>{
      'data': instance.data,
      'isArray': instance.isArray,
      'path': instance.path,
      'duration': instance.duration,
      'method': instance.method,
      'pagination': instance.pagination,
    };

_$_Datum _$$_DatumFromJson(Map<String, dynamic> json) => _$_Datum(
      purchaseOrderId: json['purchaseOrderId'] as String?,
      freeNumber: json['freeNumber'] as String?,
      recordDate: json['recordDate'] as int?,
      orderNumber: json['orderNumber'] as String?,
      urgentNeed: json['urgentNeed'] as String?,
      buyGroup: json['buyGroup'] as String?,
      taxType: json['taxType'] as String?,
      totalAmount: (json['totalAmount'] as num?)?.toDouble(),
      currency: json['currency'] as String?,
      providerId: json['providerId'] as String?,
      providerName: json['providerName'] as String?,
      centerId: json['centerId'] as String?,
      centerName: json['centerName'] as String?,
      applicant: json['applicant'] as String?,
      requirementTrackingNumber: json['requirementTrackingNumber'] as String?,
      purchasingOrganization: json['purchasingOrganization'] as String?,
      liberatingUser: json['liberatingUser'] as String?,
      orderPriority: json['orderPriority'] as String?,
      response: json['response'] as String?,
      reason: json['reason'] as String?,
    );

Map<String, dynamic> _$$_DatumToJson(_$_Datum instance) => <String, dynamic>{
      'purchaseOrderId': instance.purchaseOrderId,
      'freeNumber': instance.freeNumber,
      'recordDate': instance.recordDate,
      'orderNumber': instance.orderNumber,
      'urgentNeed': instance.urgentNeed,
      'buyGroup': instance.buyGroup,
      'taxType': instance.taxType,
      'totalAmount': instance.totalAmount,
      'currency': instance.currency,
      'providerId': instance.providerId,
      'providerName': instance.providerName,
      'centerId': instance.centerId,
      'centerName': instance.centerName,
      'applicant': instance.applicant,
      'requirementTrackingNumber': instance.requirementTrackingNumber,
      'purchasingOrganization': instance.purchasingOrganization,
      'liberatingUser': instance.liberatingUser,
      'orderPriority': instance.orderPriority,
      'response': instance.response,
      'reason': instance.reason,
    };

_$_Pagination _$$_PaginationFromJson(Map<String, dynamic> json) =>
    _$_Pagination(
      pageNumber: json['pageNumber'] as String?,
      pageSize: json['pageSize'] as String?,
      itemCount: json['itemCount'] as int?,
      pageCount: json['pageCount'] as int?,
      hasPreviousPage: json['hasPreviousPage'] as bool?,
      hasNextPage: json['hasNextPage'] as bool?,
    );

Map<String, dynamic> _$$_PaginationToJson(_$_Pagination instance) =>
    <String, dynamic>{
      'pageNumber': instance.pageNumber,
      'pageSize': instance.pageSize,
      'itemCount': instance.itemCount,
      'pageCount': instance.pageCount,
      'hasPreviousPage': instance.hasPreviousPage,
      'hasNextPage': instance.hasNextPage,
    };
