// To parse this JSON data, do
//
//     final subDocumentResumeListModel = subDocumentResumeListModelFromJson(jsonString);

import 'dart:convert';

import 'package:kcc_mobile_app/features/expense_detail/domain/entities/attachment_entitie.dart';
import 'package:kcc_mobile_app/features/expense_detail/domain/entities/sub_document_entitie.dart';
import 'package:kcc_mobile_app/features/expense_detail/domain/entities/sub_document_resume_entitie.dart';
import 'package:kcc_mobile_app/features/expense_detail/domain/entities/sub_document_resume_list_entitie.dart';
import 'package:kcc_mobile_app/shared/data/model/pagination_model.dart';

SubDocumentResumeListModel subDocumentResumeListModelFromJson(String str) =>
    SubDocumentResumeListModel.fromJson(
      json.decode(str) as Map<String, dynamic>,
    );

class SubDocumentResumeListModel extends SubDocumentResumeListEntitie {
  const SubDocumentResumeListModel({
    required PaginationModel pagination,
    required List<SubDocumentResumeModel> data,
  }) : super(pagination: pagination, data: data);

  factory SubDocumentResumeListModel.fromJson(Map<String, dynamic> json) =>
      SubDocumentResumeListModel(
        pagination: PaginationModel.fromJson(
          json["pagination"] as Map<String, dynamic>,
        ),
        data: List<SubDocumentResumeModel>.from(json["data"].map(
          (x) => SubDocumentResumeModel.fromJson(
            x as Map<String, dynamic>,
          ),
        ) as Iterable<dynamic>),
      );
}

class SubDocumentResumeModel extends SubDocumentResumeEntitie {
  const SubDocumentResumeModel({
    required SubDocumentModel subDocument,
    required String dispatchersRut,
    required AttachmentModel attachment,
  }) : super(
          subDocument: subDocument,
          dispatchersRut: dispatchersRut,
          attachment: attachment,
        );

  factory SubDocumentResumeModel.fromJson(Map<String, dynamic> json) =>
      SubDocumentResumeModel(
        subDocument: SubDocumentModel.fromJson(
          json["subDocument"] as Map<String, dynamic>,
        ),
        dispatchersRut: json["dispatchersRut"] == null
            ? ''
            : json["dispatchersRut"] as String,
        attachment: AttachmentModel.fromJson(
          json["attachment"] as Map<String, dynamic>,
        ),
      );
}

class AttachmentModel extends AttachmentEntitie {
  const AttachmentModel({
    required String id,
    required String mimeType,
    required String name,
  }) : super(id: id, mimeType: mimeType, name: name);

  factory AttachmentModel.fromJson(Map<String, dynamic> json) =>
      AttachmentModel(
        id: json["id"] == null ? '' : json["id"] as String,
        mimeType: json["mimeType"] == null ? '' : json["mimeType"] as String,
        name: json["name"] == null ? '' : json["name"] as String,
      );
}

class SubDocumentModel extends SubDocumentEntitie {
  const SubDocumentModel({
    required String id,
    required int date,
    required String type,
    required dynamic number,
    required double amount,
  }) : super(
          id: id,
          date: date,
          type: type,
          number: number,
          amount: amount,
        );

  factory SubDocumentModel.fromJson(Map<String, dynamic> json) =>
      SubDocumentModel(
        id: json["id"] == null ? '' : json["id"] as String,
        date: json["date"] == null ? 0 : json["date"] as int,
        type: json["type"] == null ? '' : json["type"] as String,
        number: json["number"],
        amount:
            json["amount"] == null ? 0 : json["amount"].toDouble() as double,
      );
}
