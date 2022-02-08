// ignore_for_file: lines_longer_than_80_chars

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kcc_mobile_app/features/Flujo_rendiciones/approvals_history/presentation/pages/approvals_page.dart';

import 'package:kcc_mobile_app/shared/presentation/widgets/appbar_widget.dart';
import 'package:kcc_mobile_app/shared/presentation/widgets/drawer_widget.dart';
import 'package:kcc_mobile_app/shared/presentation/widgets/header_title_widget.dart';

import 'package:pull_to_refresh/pull_to_refresh.dart';

import 'package:kcc_mobile_app/injection_container.dart';
import '../../domain/entities/expense_detail_entitie.dart';
import '../../domain/entities/sub_document_resume_list_entitie.dart';
import '../bloc/expense_detail_bloc.dart';
import '../widgets/custom_tabbar_widget.dart';
import '../widgets/document_list_widget.dart';
import '../widgets/expense_detail_widget.dart';

class ExpenseDetailPage extends StatelessWidget {
  const ExpenseDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<ExpenseDetailBloc>(),
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBarWidget(),
          drawer: const DrawerWidget(),
          body: Column(
            children: [
              BlocBuilder<ExpenseDetailBloc, ExpenseDetailState>(
                builder: (context, state) {
                  if (state is Empty) {
                    BlocProvider.of<ExpenseDetailBloc>(
                      context,
                      listen: false,
                    ).add(GetExpenseDetailEvent());
                    return SizedBox(
                      height: MediaQuery.of(context).size.height * 0.75,
                      child: const Center(
                        child: Text('No hay Información'),
                      ),
                    );
                  } else if (state is Error) {
                    return Center(
                      child: Text(state.errorMessage),
                    );
                  } else if (state is Loading) {
                    return SizedBox(
                      height: MediaQuery.of(context).size.height * 0.8,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Center(
                            child: CircularProgressIndicator(),
                          ),
                        ],
                      ),
                    );
                  } else {
                    final ExpenseDetailEntitie expenseDetail =
                        state.expenseDetail!;
                    final RefreshController refreshController =
                        state.refreshController!;
                    final SubDocumentResumeListEntitie items = state.items!;
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const HeaderTitleWidget(
                          invoiceNumber: "4000088",
                        ),
                        const CustomTabBarWidget(),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.695,
                          child: TabBarView(
                            children: [
                              ExpenseDetailWidget(
                                expenseDetail: expenseDetail,
                                mark: state.mark!,
                              ),
                              DocumentListWidget(
                                refreshController: refreshController,
                                items: items,
                              ),
                              //const SizedBox(),
                              const ApprovalsPage(),
                              //ExpensesForm(),
                            ],
                          ),
                        ),
                      ],
                    );
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
