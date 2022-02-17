// ignore_for_file: lines_longer_than_80_chars

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../injection_container.dart';
import '../../domain/entities/approvals_history_funds_entitie.dart';
import '../bloc/approvals_funds_bloc.dart';
import '../widgets/approvals_history_funds_widget.dart';

class ApprovalsHistoryFundsPage extends StatelessWidget {
  const ApprovalsHistoryFundsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<ApprovalsFundsBloc>(),
      child: SingleChildScrollView(
        child: Column(
          children: [
            BlocBuilder<ApprovalsFundsBloc, ApprovalsFundsState>(
              builder: (context, state) {
                if (state is Empty) {
                  BlocProvider.of<ApprovalsFundsBloc>(
                    context,
                    listen: false,
                  ).add(GetApprovalsHistoryFundsEvent());
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
                  final ApprovalsHistoryFundsEntitie items = state.items!;
                  return SizedBox(
                    height: 550,
                    child: ApprovalsHistoryFunds(
                      data: items,
                    ),
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
