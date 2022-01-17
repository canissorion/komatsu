import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:kcc_mobile_app/features/detalle_documento/data/datasources/detalle_documento_remote_datasource.dart';
import 'package:kcc_mobile_app/features/detalle_documento/data/repositories/detalle_documento_repository_impl.dart';
import 'package:kcc_mobile_app/features/detalle_documento/domain/repositories/detalle_documento_repository.dart';
import 'package:kcc_mobile_app/features/detalle_documento/domain/usecases/detalle_documento_usecase.dart';
import 'package:kcc_mobile_app/features/detalle_documento/presentation/bloc/detalle_documento_bloc.dart';

final sl = GetIt.instance;

Future<void> init() async {
  // Features - Detalle Documento
  // Bloc
  sl.registerFactory(
    () => DetalleDocumentoBloc(getDetalleDocumento: sl()),
  );

  // Use Cases

  sl.registerLazySingleton(() => GetDetalleDocumento(sl()));

  // Repository
  sl.registerLazySingleton<DetalleDocumentoRepository>(
    () => DetalleDocumentoRepositoryImpl(remoteDataSource: sl()),
  );

  // Data sources

  sl.registerLazySingleton<DetalleDocumentoRemoteDataSource>(
    () => DetalleDocumentoRemoteDataSourceImpl(client: sl()),
  );

  // Core

  // External

  sl.registerLazySingleton(() => Dio());
}
