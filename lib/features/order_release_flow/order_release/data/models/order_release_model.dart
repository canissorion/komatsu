import 'dart:convert';

import 'package:kcc_mobile_app/features/order_release_flow/order_release/data/models/order_release_center_model.dart';
import 'package:kcc_mobile_app/features/order_release_flow/order_release/data/models/order_release_currency_model.dart';
import 'package:kcc_mobile_app/features/order_release_flow/order_release/data/models/order_release_provider_model.dart';

import '../../domain/entitites/order_release_entitie.dart';
import 'order_release_applicant_model.dart';
import 'order_release_liberation_model.dart';
import 'order_release_liberator_model.dart';
import 'order_release_record_model.dart';
import 'order_release_resume_card_model.dart';

OrderReleaseModel orderReleaseFromJson(String str) =>
    OrderReleaseModel.fromJson(json.decode(str) as Map<String, dynamic>);

class OrderReleaseModel extends OrderReleaseEntitie {
  const OrderReleaseModel({
    required ResumeCardModel resumeCard,
    required int creationDate,
    required LiberationModel liberation,
    required LiberatorModel liberator,
    required String priority,
    required ApplicantModel applicant,
    required int needNumber,
    required int purchasingOrg,
    required RecordModel record,
    required int stategyCode,
    required String answer,
    required int generalStatus,
    required CurrencyModel currency,
    required ProviderModel provider,
    required CenterModel center,
  }) : super(
          resumeCard: resumeCard,
          creationDate: creationDate,
          liberation: liberation,
          liberator: liberator,
          priority: priority,
          applicant: applicant,
          needNumber: needNumber,
          purchasingOrg: purchasingOrg,
          record: record,
          stategyCode: stategyCode,
          answer: answer,
          generalStatus: generalStatus,
          currency: currency,
          provider: provider,
          center: center,
        );

  factory OrderReleaseModel.fromJson(Map<String, dynamic> json) =>
      OrderReleaseModel(
        resumeCard: ResumeCardModel.fromJson(
          json["resumeCard"] as Map<String, dynamic>,
        ),
        creationDate: json["creationDate"] as int,
        liberation: LiberationModel.fromJson(
          json["liberation"] as Map<String, dynamic>,
        ),
        liberator:
            LiberatorModel.fromJson(json["liberator"] as Map<String, dynamic>),
        priority: json["priority"].toString(),
        applicant:
            ApplicantModel.fromJson(json["applicant"] as Map<String, dynamic>),
        needNumber: json["needNumber"] as int,
        purchasingOrg: json["purchasingOrg"] as int,
        record: RecordModel.fromJson(json["record"] as Map<String, dynamic>),
        stategyCode: json["stategyCode"] as int,
        answer: json["answer"].toString(),
        generalStatus: json["generalStatus"] as int,
        currency:
            CurrencyModel.fromJson(json["currency"] as Map<String, dynamic>),
        provider:
            ProviderModel.fromJson(json["provider"] as Map<String, dynamic>),
        center: CenterModel.fromJson(json["center"] as Map<String, dynamic>),
      );
}
