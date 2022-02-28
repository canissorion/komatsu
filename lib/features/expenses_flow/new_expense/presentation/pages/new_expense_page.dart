import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kcc_mobile_app/features/expenses_flow/new_expense/domain/entities/new_expense_entitie.dart';

import '../../../../../injection_container.dart';
import '../../../../../shared/presentation/widgets/appbar_widget.dart';
import '../../../../../shared/presentation/widgets/drawer_widget.dart';
import '../bloc/new_expense_bloc.dart';
import '../bloc/step_wizard_bloc/step_wizard_bloc.dart';
import '../widgets/expense_resume_close_widget.dart';
import '../widgets/form_steps_widget.dart';
import '../widgets/new_expense_form_widget.dart';
import 'document_selected_list_page.dart';

class NewExpensePage extends StatelessWidget {
  const NewExpensePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBarWidget(),
        drawer: const DrawerWidget(),
        body: SingleChildScrollView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          child: MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (context) => sl<StepWizardBloc>(),
                child: Container(),
              ),
              BlocProvider(
                create: (BuildContext context) => sl<NewExpenseBloc>(),
              )
            ],
            child: Column(
              children: [
                BlocBuilder<StepWizardBloc, StepWizardState>(
                  builder: (context, state) {
                    if (state is Empty) {
                      BlocProvider.of<StepWizardBloc>(
                        context,
                        listen: false,
                      ).add(const InitSteper());
                    }
                    if (state is Loaded) {
                      return FormStepWidget(
                        pagePosition: state.stepPosition,
                      );
                    }
                    return const CircularProgressIndicator();
                  },
                ),
                BlocBuilder<NewExpenseBloc, NewExpenseState>(
                  builder: (context, state) {
                    if (state is EmptyNewExpenses) {
                      BlocProvider.of<NewExpenseBloc>(
                        context,
                        listen: false,
                      ).add(GetNewExpenseEvent());
                      return SizedBox(
                        height: MediaQuery.of(context).size.height * 0.75,
                        child: const Center(
                          child: Text('No hay Información'),
                        ),
                      );
                    } else if (state is ErrorNewExpenses) {
                      return Center(
                        child: Text(state.errorMessage),
                      );
                    } else if (state is LoadingNewExpenses) {
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
                      final NewExpenseEntitie newExpense = state.newExpense!;

                      return Column(
                        children: [
                          const SizedBox(
                            height: 50,
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.9,
                            child: TabBarView(
                              physics: const NeverScrollableScrollPhysics(),
                              children: [
                                NewExpenseFormWidget(
                                  newExpense: newExpense,
                                  value: state.selectField!,
                                ),
                                const DocumentSelectedListPage(),
                                ExpenseResumeCloseWidget(
                                  newExpense: newExpense,
                                )
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
      ),
    );
  }
}
