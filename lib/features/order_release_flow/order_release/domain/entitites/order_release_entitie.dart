import 'package:equatable/equatable.dart';

import 'order_release_applicant_entitie.dart';
import 'order_release_center_entitie.dart';
import 'order_release_currency_entitite.dart';
import 'order_release_liberation_entitie.dart';
import 'order_release_liberator_entitie.dart';
import 'order_release_provider_entitie.dart';
import 'order_release_record_entitie.dart';
import 'order_release_resume_card_entitie.dart';

class OrderReleaseEntitie extends Equatable {
  const OrderReleaseEntitie({
    required this.resumeCard,
    required this.creationDate,
    required this.liberation,
    required this.liberator,
    required this.priority,
    required this.applicant,
    required this.needNumber,
    required this.purchasingOrg,
    required this.record,
    required this.stategyCode,
    required this.answer,
    required this.generalStatus,
    required this.currency,
    required this.provider,
    required this.center,
  });

  final ResumeCardEntitie resumeCard;
  final int creationDate;
  final LiberationEntitie liberation;
  final LiberatorEntitie liberator;
  final String priority;
  final ApplicantEntitie applicant;
  final int needNumber;
  final int purchasingOrg;
  final RecordEntitie record;
  final int stategyCode;
  final String answer;
  final int generalStatus;
  final CurrencyEntitie currency;
  final ProviderEntitie provider;
  final CenterEntitie center;

  @override
  // TODO: implement props
  List<Object?> get props => [
        resumeCard,
        creationDate,
        liberation,
        liberator,
        priority,
        applicant,
        needNumber,
        purchasingOrg,
        record,
        stategyCode,
        answer,
        generalStatus,
        currency,
        provider,
        center
      ];
}
