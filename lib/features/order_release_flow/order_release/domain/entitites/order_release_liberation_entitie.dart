import 'package:equatable/equatable.dart';

class LiberationEntitie extends Equatable {
  const LiberationEntitie({
    required this.liberationDate,
    required this.sendTo,
    required this.liberationStatus,
  });

  final int liberationDate;
  final String sendTo;
  final String liberationStatus;

  @override
  // TODO: implement props
  List<Object?> get props => [liberationDate, sendTo, liberationStatus];
}
