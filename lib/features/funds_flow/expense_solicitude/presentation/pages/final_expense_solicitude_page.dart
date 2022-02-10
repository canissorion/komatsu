import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kcc_mobile_app/features/funds_flow/expense_solicitude/presentation/bloc/expense_solicitude_bloc.dart';
import 'package:kcc_mobile_app/features/funds_flow/expense_solicitude/presentation/widgets/final_expense_solicitude_widget.dart';
import 'package:kcc_mobile_app/shared/presentation/widgets/appbar_widget.dart';
import 'package:kcc_mobile_app/shared/presentation/widgets/drawer_widget.dart';
import 'package:kcc_mobile_app/injection_container.dart';
import 'package:kcc_mobile_app/shared/presentation/widgets/header_title_widget.dart';

class FinalExpenseSolicitudePage extends StatelessWidget {
  const FinalExpenseSolicitudePage({Key? key, required this.option})
      : super(key: key);
  final bool option;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<ExpenseSolicitudeBloc>(),
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
                  return Column(
                    children: [
                      HeaderTitleWidget(
                        invoiceNumber: state.expenseSolicitude!.documentNumber,
                        position: false,
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
                                    FinalExpenseFundsWidget(
                                      expenseSolicitude:
                                          state.expenseSolicitude!,
                                      option: option,
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
