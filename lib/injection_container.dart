import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import 'features/approvals_history/data/datasources/approvals_remote_datasources.dart';
import 'features/approvals_history/data/repositories/approval_history_repositoy_impl.dart';
import 'features/approvals_history/domain/repositories/approval_history_repository.dart';
import 'features/approvals_history/domain/usecases/approval_history_list_usecase.dart';
import 'features/approvals_history/presentation/bloc/approvals_history_bloc.dart';
import 'features/document_detail/data/datasources/document_detail_remote_datasource.dart';
import 'features/document_detail/data/repositories/document_detail_repository_impl.dart';
import 'features/document_detail/domain/repositories/document_detail_repository.dart';
import 'features/document_detail/domain/usecases/document_detail_usecase.dart';
import 'features/document_detail/presentation/bloc/document_detail_bloc.dart';
import 'features/expense_detail/data/datasources/expense_detail_remote_datasource.dart';
import 'features/expense_detail/data/repositories/expense_detail_repository_impl.dart';
import 'features/expense_detail/data/repositories/sub_document_resume_repository_impl.dart';
import 'features/expense_detail/domain/repositories/expense_detail_repository.dart';
import 'features/expense_detail/domain/repositories/sub_document_resume_repository.dart';
import 'features/expense_detail/domain/usecases/expense_detail_usecase.dart';
import 'features/expense_detail/domain/usecases/sub_document_resume_usecase.dart';
import 'features/expense_detail/presentation/bloc/expense_detail_bloc.dart';
import 'features/pending_expenses/data/datasources/pending_items_remote_datasource.dart';
import 'features/pending_expenses/data/repositories/pending_items_list_repository_impl.dart';
import 'features/pending_expenses/domain/repositories/pending_items_list_repository.dart';
import 'features/pending_expenses/domain/usecases/pending_items_list_usecase.dart';
import 'features/pending_expenses/presentation/bloc/expense_list_bloc.dart';

final sl = GetIt.instance;

Future<void> init() async {
  // Features - Detalle Documento
  // Bloc
  sl.registerFactory(
    () => DocumentDetailBloc(getDocumentDetail: sl()),
  );

  sl.registerFactory(
    () => PendingExpenseBloc(
      getPendingDocumentListDetail: sl(),
    ),
  );

  sl.registerFactory(
    () => ExpenseDetailBloc(
      getExpenseDetail: sl(),
      getSubdocumentResumeUseCase: sl(),
    ),
  );

  sl.registerFactory(
    () => ApprovalsHistoryBloc(
      getApprovalHistoryListUseCase: sl(),
    ),
  );
  // Use Cases

  sl.registerLazySingleton(() => GetDocumentDetail(sl()));
  sl.registerLazySingleton(() => GetExpenseDetail(sl()));
  sl.registerLazySingleton(() => GetSubDocumentResumeUseCase(sl()));
  sl.registerLazySingleton(() => GetPendingDocumentDetailListUseCase(sl()));
  sl.registerLazySingleton(() => GetApprovalHistoryListUseCase(sl()));

  // Repository
  sl.registerLazySingleton<DocumentDetailRepository>(
    () => DocumentDetailRepositoryImpl(remoteDataSource: sl()),
  );
  sl.registerLazySingleton<ExpenseDetailRepository>(
    () => ExpenseDetailRepositoryImpl(remoteDataSource: sl()),
  );
  sl.registerLazySingleton<PendingDocumentDetailListRepository>(
    () => PendingDocumentDetailListRepositoryImpl(remoteDataSource: sl()),
  );
  sl.registerLazySingleton<SubDocumentResumeRepository>(
    () => SubDocumentResumeRepositoryImpl(remoteDataSource: sl()),
  );
  sl.registerLazySingleton<ApprovalHistoryRepository>(
    () => ApprovalHistoryRepositoryImpl(remoteDataSource: sl()),
  );
  // Data sources

  sl.registerLazySingleton<DocumentDetailRemoteDataSource>(
    () => DocumentDetailRemoteDataSourceImpl(client: sl()),
  );

  sl.registerLazySingleton<PendingDocumentDetailRemoteDataSource>(
    () => PendingDocumentDetailRemoteDataSourceImpl(client: sl()),
  );

  sl.registerLazySingleton<ExpenseDetailRemoteDataSource>(
    () => ExpenseDetailRemoteDataSourceImpl(client: sl()),
  );

  sl.registerLazySingleton<ApprovalsHistoryRemoteDataSource>(
    () => ApprovalsHistoryRemoteDataSourceImpl(client: sl()),
  );
  // Core

  // External
  final BaseOptions options = BaseOptions(
      receiveDataWhenStatusError: true,
      connectTimeout: 10 * 1000, // 60 seconds
      receiveTimeout: 10 * 1000 // 60 seconds
      );
  sl.registerLazySingleton(() => Dio(options));
}
