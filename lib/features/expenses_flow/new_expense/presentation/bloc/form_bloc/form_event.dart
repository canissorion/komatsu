part of 'form_bloc.dart';

abstract class FormEvent extends Equatable {
  const FormEvent();

  @override
  List<Object> get props => [];
}

class ChangeDrop1 extends FormEvent {
  final int selectField;
  const ChangeDrop1(this.selectField);
  @override
  List<Object> get props => [selectField];
}

class ChangeDrop2 extends FormEvent {
  final int selectField;
  const ChangeDrop2(this.selectField);
  @override
  List<Object> get props => [selectField];
}

class ChangeDrop3 extends FormEvent {
  final int selectField;
  const ChangeDrop3(this.selectField);
  @override
  List<Object> get props => [selectField];
}

class ChangeObjetive extends FormEvent {
  final String text;
  const ChangeObjetive(this.text);
  @override
  List<Object> get props => [text];
}
