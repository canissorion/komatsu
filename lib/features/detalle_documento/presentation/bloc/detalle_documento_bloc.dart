import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:kcc_mobile_app/core/usecases/usecase.dart';
import 'package:kcc_mobile_app/features/detalle_documento/data/datasources/detalle_documento_remote_datasource.dart';
import 'package:kcc_mobile_app/features/detalle_documento/data/repositories/detalle_documento_repository_impl.dart';
import 'package:kcc_mobile_app/features/detalle_documento/domain/usecases/detalle_documento_usecase.dart';
import '../../domain/entities/detalle_documento_entitie.dart';

part 'detalle_documento_event.dart';
part 'detalle_documento_state.dart';

class DetalleDocumentoBloc
    extends Bloc<DetalleDocumentoEvent, DetalleDocumentoState> {
  final GetDetalleDocumento getDetalleDocumento;
  DetalleDocumentoBloc({required this.getDetalleDocumento}) : super(Empty()) {
    on<GetDetalleDocumentoEvent>((event, emit) async {
      emit(Loading());
      final detalleDocumento = await getDetalleDocumento(NoParams());
      print('cargo');
      detalleDocumento!.fold(
        (l) => emit(Error(message: l.toString())),
        (r) => emit(Loaded(documento: r)),
      );
    });
  }
}
