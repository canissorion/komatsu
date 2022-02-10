import 'package:equatable/equatable.dart';

class ObjectiveEntitie extends Equatable {
  final String advance;
  final int estimateTime;

  ObjectiveEntitie({
    required this.advance,
    required this.estimateTime,
  });

  @override
  List<Object?> get props => [advance, estimateTime];
}
