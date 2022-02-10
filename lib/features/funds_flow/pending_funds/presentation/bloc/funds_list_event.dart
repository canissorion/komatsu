part of 'funds_list_bloc.dart';

abstract class PendingFundsEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class GetPendingFundsEvent extends PendingFundsEvent {}

class LoadMoreItemsEvent extends PendingFundsEvent {}

class ChangeDateStartEvent extends PendingFundsEvent {
  final DateTime date;

  ChangeDateStartEvent(this.date);

  @override
  List<Object> get props => [date];
}

class ChangeDateEndEvent extends PendingFundsEvent {
  final DateTime date;

  ChangeDateEndEvent(this.date);

  @override
  List<Object> get props => [date];
}
