import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import 'features/expenses_flow/approvals_history/data/datasources/approvals_remote_datasources.dart';
import 'features/expenses_flow/approvals_history/data/repositories/approval_history_repositoy_impl.dart';
import 'features/expenses_flow/approvals_history/domain/repositories/approval_history_repository.dart';
import 'features/expenses_flow/approvals_history/domain/usecases/approval_history_list_usecase.dart';
import 'features/expenses_flow/approvals_history/presentation/bloc/approvals_history_bloc.dart';
import 'features/expenses_flow/document_detail/data/datasources/document_detail_remote_datasource.dart';
import 'features/expenses_flow/document_detail/data/repositories/document_detail_repository_impl.dart';
import 'features/expenses_flow/document_detail/domain/repositories/document_detail_repository.dart';
import 'features/expenses_flow/document_detail/domain/usecases/document_detail_usecase.dart';
import 'features/expenses_flow/document_detail/presentation/bloc/document_detail_bloc.dart';
import 'features/expenses_flow/expense_detail/data/datasources/expense_detail_remote_datasource.dart';
import 'features/expenses_flow/expense_detail/data/repositories/expense_detail_repository_impl.dart';
import 'features/expenses_flow/expense_detail/data/repositories/sub_document_resume_repository_impl.dart';
import 'features/expenses_flow/expense_detail/domain/repositories/expense_detail_repository.dart';
import 'features/expenses_flow/expense_detail/domain/repositories/sub_document_resume_repository.dart';
import 'features/expenses_flow/expense_detail/domain/usecases/expense_detail_usecase.dart';
import 'features/expenses_flow/expense_detail/domain/usecases/sub_document_resume_usecase.dart';
import 'features/expenses_flow/expense_detail/presentation/bloc/expense_detail_bloc.dart';
import 'features/expenses_flow/pending_expenses/data/datasources/pending_items_remote_datasource.dart';
import 'features/expenses_flow/pending_expenses/data/repositories/pending_items_list_repository_impl.dart';
import 'features/expenses_flow/pending_expenses/domain/repositories/pending_items_list_repository.dart';
import 'features/expenses_flow/pending_expenses/domain/usecases/pending_items_list_usecase.dart';
import 'features/expenses_flow/pending_expenses/presentation/bloc/expense_list_bloc.dart';
import 'features/funds_flow/approvals_history_funds/data/datasources/approvals_funds_remote_datasources.dart';
import 'features/funds_flow/approvals_history_funds/data/repositories/approval_history_funds_repositoy_impl.dart';
import 'features/funds_flow/approvals_history_funds/domain/repositories/approval_history_funds_repository.dart';
import 'features/funds_flow/approvals_history_funds/domain/usecases/approval_history_funds_usecase.dart';
import 'features/funds_flow/approvals_history_funds/presentation/bloc/approvals_funds_bloc.dart';
import 'features/funds_flow/expense_solicitude/data/datasources/expense_solicitude_remote_datasource.dart';
import 'features/funds_flow/expense_solicitude/data/repositories/expense_solicitude_repository_impl.dart';
import 'features/funds_flow/expense_solicitude/domain/repositories/expense_solicitude_repository.dart';
import 'features/funds_flow/expense_solicitude/domain/usecase/expense_solicitude_usecase.dart';
import 'features/funds_flow/expense_solicitude/presentation/bloc/expense_solicitude_bloc.dart';
import 'features/funds_flow/funds_form/data/datasources/funds_form_remote_datasources.dart';
import 'features/funds_flow/funds_form/data/repositories/funds_form_repository_impl.dart';
import 'features/funds_flow/funds_form/domain/repositories/funds_form_repository.dart';
import 'features/funds_flow/funds_form/domain/usecases/funds_form_usecase.dart';
import 'features/funds_flow/funds_form/presentation/bloc/funds_form_bloc.dart';
import 'features/funds_flow/pending_funds/data/datasources/pending_funds_remote_datasource.dart';
import 'features/funds_flow/pending_funds/data/repositories/pending_funds_repository_impl.dart';
import 'features/funds_flow/pending_funds/domain/repositories/pending_funds_repository.dart';
import 'features/funds_flow/pending_funds/domain/usecases/pending_funds_list_usecase.dart';
import 'features/funds_flow/pending_funds/presentation/bloc/funds_list_bloc.dart';


import 'features/expense_detail/data/datasources/expense_detail_remote_datasource.dart';


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
  // Use Cases

  sl.registerLazySingleton(() => GetDocumentDetail(sl()));
  sl.registerLazySingleton(() => GetExpenseDetail(sl()));
  sl.registerLazySingleton(() => GetSubDocumentResumeUseCase(sl()));
  sl.registerLazySingleton(() => GetPendingDocumentDetailListUseCase(sl()));
  sl.registerLazySingleton(() => GetApprovalHistoryListUseCase(sl()));
  //--------------------------Fondos----------------------------------
  sl.registerLazySingleton(() => GetPendingFundsDetailListUseCase(sl()));
  sl.registerLazySingleton(() => GetExpenseSolicitudeUseCase(sl()));
  sl.registerLazySingleton(() => GetApprovalsHistoryFundsUseCase(sl()));
  sl.registerLazySingleton(() => GetFundsFormUseCase(sl()));

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
  //--------------------------Fondos----------------------------------
  sl.registerLazySingleton<PendingFundsDetailRepository>(
    () => PendingFundsDetailRepositoryImpl(remoteDataSource: sl()),
  );
  sl.registerLazySingleton<ExpenseSolicitudeRepository>(
    () => ExpenseSolicitudeRepositoryImpl(remoteDataSource: sl()),
  );
  sl.registerLazySingleton<ApprovalsHistoryFundsRepository>(
    () => ApprovalsHistoryFundsRepositoryImpl(remoteDataSource: sl()),
  );

  sl.registerLazySingleton<FundsFormRepository>(
    () => FundsFormRepositoryImpl(remoteDataSource: sl()),
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
  //--------------------------Fondos----------------------------------
  sl.registerLazySingleton<PendingFundsDetailRemoteDataSource>(
    () => PendingFundsDetailRemoteDataSourceImpl(client: sl()),
  );
  sl.registerLazySingleton<ExpenseSolicitudeRemoteDataSource>(
    () => ExpenseSolicitudeRemoteDataSourceImpl(client: sl()),
  );
  sl.registerLazySingleton<ApprovalsHistoryFundsRemoteDataSource>(
    () => ApprovalsHistoryFundsRemoteDataSourceImpl(client: sl()),
  );

  sl.registerLazySingleton<FundsFormRemoteDataSource>(
    () => FundsFormRemoteDataSourceImpl(client: sl()),
  );
  // Core

  // External
  final BaseOptions options = BaseOptions(
    receiveDataWhenStatusError: true,
    connectTimeout: 10 * 1000, // 60 seconds
    receiveTimeout: 10 * 1000 // 60 seconds
    ,
  );
  sl.registerLazySingleton(() => Dio(options));
}
