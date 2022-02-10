import 'package:flutter/material.dart';
import '../../../document_detail/presentation/pages/document_detail_page.dart';
import '../../domain/entities/expense_detail_entitie.dart';
import 'task_closure_widget.dart';
import 'expense_data_widget.dart';
import 'user_data_expense_widget.dart';
import 'approve_flow_widget.dart';
import 'responsible_data_widget.dart';
import 'expense_resume_widget.dart';

class ExpenseDetailWidget extends StatelessWidget {
  const ExpenseDetailWidget({
    Key? key,
    required this.expenseDetail,
    required this.mark,
  }) : super(key: key);

  final ExpenseDetailEntitie expenseDetail;
  final bool mark;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 10.0,
              right: 18,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  behavior: HitTestBehavior.translucent,
                  onTap: () {},
                  child: ResponsibleData(
                    expenseDetail: expenseDetail,
                  ),
                ),
                const Divider(
                  thickness: 2,
                ),
              ],
            ),
          ),
          UserDataExpenseWidget(
            expenseDetail: expenseDetail,
          ),
          const Divider(
            thickness: 2,
            indent: 18,
            endIndent: 18,
          ),
          ExpenseDataWidget(
            expenseDetail: expenseDetail,
          ),
          const Divider(
            thickness: 2,
            indent: 18,
            endIndent: 18,
          ),
          ExpenseResumeWidget(
            expenseDetail: expenseDetail,
          ),
          const Divider(
            thickness: 2,
            indent: 18,
            endIndent: 18,
          ),
          ApproveFlowWidget(
            expenseDetail: expenseDetail,
          ),
          const Divider(
            thickness: 2,
            indent: 18,
            endIndent: 18,
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: TaskClosureWidget(
              checked: mark,
            ),
          ),
        ],
      ),
    );
  }
}
