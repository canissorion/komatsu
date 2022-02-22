part of 'order_release_bloc.dart';

abstract class OrderReleaseEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class GetOrderReleaseEvent extends OrderReleaseEvent {}

class LoadMoreItemsEvent extends OrderReleaseEvent {}

class MarkEvent extends OrderReleaseEvent {}
