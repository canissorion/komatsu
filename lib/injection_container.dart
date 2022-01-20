import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import 'features/detalle_documento/data/datasources/detalle_documento_remote_datasource.dart';
import 'features/detalle_documento/data/repositories/detalle_documento_repository_impl.dart';
import 'features/detalle_documento/domain/repositories/detalle_documento_repository.dart';
import 'features/detalle_documento/domain/usecases/detalle_documento_usecase.dart';
import 'features/detalle_documento/presentation/bloc/detalle_documento_bloc.dart';
import 'features/detalle_rendicion/data/datasources/detalle_rendicion_remote_datasource.dart';
import 'features/detalle_rendicion/data/repositories/detalle_rendicion_repository_impl.dart';
import 'features/detalle_rendicion/domain/repositories/detalle_rendicion_repository.dart';
import 'features/detalle_rendicion/domain/usecases/detalle_rendicion_usecase.dart';
import 'features/detalle_rendicion/presentation/bloc/detalle_rendicion_bloc.dart';
import 'features/rendiciones_pendientes/data/datasources/pending_items_remote_datasource.dart';
import 'features/rendiciones_pendientes/data/repositories/pending_items_repository_impl.dart';
import 'features/rendiciones_pendientes/domain/repositories/pending_items_repository.dart';
import 'features/rendiciones_pendientes/domain/usecases/pending_items_usecase.dart';
import 'features/rendiciones_pendientes/presentation/bloc/listado_solicitudes_bloc.dart';

final sl = GetIt.instance;

Future<void> init() async {
  // Features - Detalle Documento
  // Bloc
  sl.registerFactory(
    () => DetalleDocumentoBloc(getDetalleDocumento: sl()),
  );

  sl.registerFactory(
    () => PendingItemsBloc(getDocumentPendingApprove: sl()),
  );

  sl.registerFactory(
    () => DetalleRendicionBloc(getDetalleRendicion: sl()),
  );
  // Use Cases

  sl.registerLazySingleton(() => GetDetalleDocumento(sl()));
  sl.registerLazySingleton(() => GetDocumentPendingApprove(sl()));
  sl.registerLazySingleton(() => GetDetalleRendicion(sl()));

  // Repository
  sl.registerLazySingleton<DetalleDocumentoRepository>(
    () => DetalleDocumentoRepositoryImpl(remoteDataSource: sl()),
  );
  sl.registerLazySingleton<DocumentPendingApproveRepository>(
    () => DocumentPendingApproveRepositoryImpl(remoteDataSource: sl()),
  );
  sl.registerLazySingleton<DetalleRendicionRepository>(
    () => DetalleRendicionRepositoryImpl(remoteDataSource: sl()),
  );

  // Data sources

  sl.registerLazySingleton<DetalleDocumentoRemoteDataSource>(
    () => DetalleDocumentoRemoteDataSourceImpl(client: sl()),
  );

  sl.registerLazySingleton<DocumentPendingApproveRemoteDataSource>(
    () => DocumentPendingApproveRemoteDataSourceImpl(details: sl()),
  );

  sl.registerLazySingleton<DetalleRendicionRemoteDataSource>(
    () => DetalleRendicionRemoteDataSourceImpl(client: sl()),
  );

  // Core

  // External

  sl.registerLazySingleton(() => Dio());
}
