part of 'order_release_bloc.dart';

abstract class OrderReleaseState extends Equatable {
  final String? errorMessage;
  final OrderReleaseEntitie? orderRelease;
  final bool? mark;

  const OrderReleaseState({this.errorMessage, this.orderRelease, this.mark});

  @override
  List<Object?> get props => [errorMessage, orderRelease, mark];
}

class Empty extends OrderReleaseState {}

class Loading extends OrderReleaseState {}

class Loaded extends OrderReleaseState {
  final OrderReleaseEntitie orderRelease;
  final bool mark;

  const Loaded({required this.orderRelease, required this.mark});

  @override
  List<Object?> get props => [orderRelease, mark];
}

class Error extends OrderReleaseState {
  final String errorMessage;

  const Error({required this.errorMessage});

  @override
  List<Object> get props => [errorMessage];
}
