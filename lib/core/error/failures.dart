// ignore_for_file: avoid_field_initializers_in_const_classes, avoid_unused_constructor_parameters, lines_longer_than_80_chars

import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  final List properties = const <dynamic>[];
  const Failure([properties]);

  @override
  List<Object?> get props => [properties];
}

// General Failures
class ServerFailure extends Failure {}

class CacheFailure extends Failure {}
