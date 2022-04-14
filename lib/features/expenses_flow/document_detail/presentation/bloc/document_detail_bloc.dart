import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import '../../../../../core/usecases/usecase.dart';

import '../../domain/entities/document_detail_entitie.dart';
import '../../domain/usecases/document_detail_usecase.dart';

part 'document_detail_event.dart';
part 'document_detail_state.dart';

class DocumentDetailBloc
    extends Bloc<DocumentDetailEvent, DocumentDetailState> {
  final GetDocumentDetail getDocumentDetail;
  DocumentDetailBloc({required this.getDocumentDetail}) : super(Empty()) {
    on<GetDocumentDetailEvent>((event, emit) async {
      emit(Loading());
      final documentDetail = await getDocumentDetail(NoParams());
      documentDetail!.fold(
        (l) => emit(Error(errorMessage: l.toString())),
        (r) => emit(Loaded(documentDetail: r)),
      );
    });
  }
}
