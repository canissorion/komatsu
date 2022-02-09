// ignore_for_file: lines_longer_than_80_chars

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kcc_mobile_app/features/Flujo_fondos/approvals_history_funds/presentation/pages/approvals_history_funds_page.dart';
import 'package:kcc_mobile_app/features/Flujo_fondos/expense_solicitude/domain/entities/expense_solicitude_entitie.dart';
import 'package:kcc_mobile_app/features/Flujo_fondos/expense_solicitude/presentation/widgets/expense_solicitude_details.dart';

import '../../../../../injection_container.dart';
import '../../../../../shared/presentation/widgets/appbar_widget.dart';
import '../../../../../shared/presentation/widgets/drawer_widget.dart';
import '../../../../../shared/presentation/widgets/header_title_widget.dart';
import '../bloc/expense_solicitude_bloc.dart';
import '../widgets/custom_tab_bar_funds_widget.dart';

class ExpenseSolicitudePage extends StatelessWidget {
  const ExpenseSolicitudePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<ExpenseSolicitudeBloc>(),
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBarWidget(),
          drawer: const DrawerWidget(),
          body: Column(
            children: [
              BlocBuilder<ExpenseSolicitudeBloc, ExpenseSolicitudeState>(
                builder: (context, state) {
                  if (state is Empty) {
                    BlocProvider.of<ExpenseSolicitudeBloc>(
                      context,
                      listen: false,
                    ).add(GetExpenseSolicitudeEvent());
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
                    final ExpenseSolicitudeEntitie expenseSolicitude =
                        state.expenseSolicitude!;
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        HeaderTitleWidget(
                          invoiceNumber: expenseSolicitude.documentNumber,
                          position: false,
                        ),
                        const CustomTabBarFundsWidget(),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.695,
                          child: TabBarView(
                            children: [
                              ExpenseSolicitudeDetailWidget(
                                expenseSolicitude: expenseSolicitude,
                              ),
                              const ApprovalsHistoryFundsPage()
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
