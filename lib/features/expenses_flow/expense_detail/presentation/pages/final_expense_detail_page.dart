import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../injection_container.dart';
import '../../../../../shared/presentation/widgets/appbar_widget.dart';
import '../../../../../shared/presentation/widgets/drawer_widget.dart';
import '../../../../../shared/presentation/widgets/header_title_widget.dart';
import '../bloc/expense_detail_bloc.dart';
import '../widgets/final_expense_detail_widget.dart';

class FinalExpenseDetailPage extends StatelessWidget {
  const FinalExpenseDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<ExpenseDetailBloc>(),
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
                  return Column(
                    children: [
                      const HeaderTitleWidget(
                        invoiceNumber: "4000088",
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.756,
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 18.0,
                                  right: 18,
                                ),
                                child: Column(
                                  children: [
                                    FinalExpenseDetailWidget(
                                      expenseDetail: state.expenseDetail!,
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  );
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
