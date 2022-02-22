import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kcc_mobile_app/features/expenses_flow/new_expense/presentation/bloc/step_wizard_bloc/step_wizard_bloc.dart';
import 'package:kcc_mobile_app/features/expenses_flow/new_expense/presentation/widgets/expense_resume_close_widget.dart';
import 'package:kcc_mobile_app/features/expenses_flow/new_expense/presentation/widgets/new_expense_form_widget.dart';
import 'package:kcc_mobile_app/injection_container.dart';
import 'package:kcc_mobile_app/shared/presentation/widgets/appbar_widget.dart';
import 'package:kcc_mobile_app/shared/presentation/widgets/drawer_widget.dart';

import '../widgets/form_steps_widget.dart';
import '../widgets/title_and_selector_widget.dart';
import 'document_selected_list_page.dart';
import 'expenses_list_selector_page.dart';

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
                const SizedBox(
                  height: 50,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.9,
                  child: const TabBarView(
                    physics: NeverScrollableScrollPhysics(),
                    children: [
                      NewExpenseFormWidget(),
                      DocumentSelectedListPage(),
                      ExpenseResumeCloseWidget()
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
