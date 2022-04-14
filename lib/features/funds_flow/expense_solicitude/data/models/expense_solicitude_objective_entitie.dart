import '../../domain/entities/expense_solicitude_objective_entitie.dart';

class ObjectiveModel extends ObjectiveEntitie {
  const ObjectiveModel({
    required String advance,
    required int estimateTime,
  }) : super(advance: advance, estimateTime: estimateTime);

  factory ObjectiveModel.fromJson(Map<String, dynamic> json) => ObjectiveModel(
        advance: json["advance"].toString(),
        estimateTime: json["estimateTime"] as int,
      );

  Map<String, dynamic> toJson() => {
        "advance": advance,
        "estimateTime": estimateTime,
      };
}
