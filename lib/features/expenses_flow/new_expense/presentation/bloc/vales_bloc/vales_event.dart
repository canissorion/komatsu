part of 'vales_bloc.dart';

abstract class ValesEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class GetValesEvent extends ValesEvent {}

class AddValesEvent extends ValesEvent {}

class MarkEvent extends ValesEvent {}

class ChangeSelectFieldData extends ValesEvent {
  final String selectField;

  ChangeSelectFieldData(this.selectField);

  @override
  List<Object> get props => [selectField];
}
