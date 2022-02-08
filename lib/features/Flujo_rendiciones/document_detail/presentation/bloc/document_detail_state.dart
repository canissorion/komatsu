// ignore_for_file: annotate_overrides, overridden_fields

part of 'document_detail_bloc.dart';

abstract class DocumentDetailState extends Equatable {
  final DocumentDetailEntitie? documentDetail;
  final String? errorMessage;

  const DocumentDetailState({this.documentDetail, this.errorMessage});
  @override
  List<Object?> get props => [documentDetail, errorMessage];
}

class Empty extends DocumentDetailState {}

class Loading extends DocumentDetailState {}

class Loaded extends DocumentDetailState {
  final DocumentDetailEntitie documentDetail;

  const Loaded({required this.documentDetail});

  @override
  List<Object> get props => [documentDetail];
}

class Error extends DocumentDetailState {
  final String errorMessage;

  const Error({required this.errorMessage});

  @override
  List<Object> get props => [errorMessage];
}
