// ignore_for_file: annotate_overrides, overridden_fields

part of 'vales_bloc.dart';

abstract class ValesState extends Equatable {
  final List<bool>? mark;

  const ValesState({
    this.mark,
  });

  @override
  List<Object?> get props => [mark];
}

class Empty extends ValesState {}

class Loading extends ValesState {}

class Loaded extends ValesState {
  final List<bool> mark;

  const Loaded({
    required this.mark,
  });

  @override
  List<Object?> get props => [mark];
}

class Error extends ValesState {
  final String errorMessage;

  const Error({required this.errorMessage});

  @override
  List<Object> get props => [errorMessage];
}
