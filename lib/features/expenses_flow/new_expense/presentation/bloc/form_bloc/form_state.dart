// ignore_for_file: annotate_overrides, overridden_fields

part of 'form_bloc.dart';

abstract class FormState extends Equatable {
  final int? dropbox1;
  final int? dropbox2;
  final int? dropbox3;
  final String? objetivo;
  const FormState({this.dropbox1, this.dropbox2, this.dropbox3, this.objetivo});

  @override
  List<Object?> get props => [dropbox1, dropbox2, dropbox3, objetivo];
}

class Empty extends FormState {}

class Loading extends FormState {}

class Loaded extends FormState {
  final int? dropbox1;
  final int? dropbox2;
  final int? dropbox3;
  final String? objetivo;
  const Loaded({this.dropbox1, this.dropbox2, this.dropbox3, this.objetivo});

  @override
  List<Object?> get props => [dropbox1, dropbox2, dropbox3, objetivo];
}

class Error extends FormState {
  final String errorMessage;

  const Error({required this.errorMessage});

  @override
  List<Object> get props => [errorMessage];
}
