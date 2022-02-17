import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'view_document_event.dart';
part 'view_document_state.dart';

class ViewDocumentBloc extends Bloc<ViewDocumentEvent, ViewDocumentState> {
  ViewDocumentBloc() : super(ViewDocumentInitial()) {
    on<ViewDocumentEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
