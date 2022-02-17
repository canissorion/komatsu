part of 'document_detail_bloc.dart';

abstract class DocumentDetailEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class GetDocumentDetailEvent extends DocumentDetailEvent {}
