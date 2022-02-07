// ignore_for_file: lines_longer_than_80_chars

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../injection_container.dart';
import '../../domain/entities/approval_history_list_entitie.dart';
import '../bloc/approvals_history_bloc.dart';
import '../widgets/approvals_widget.dart';

class ApprovalsPage extends StatelessWidget {
  const ApprovalsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<ApprovalsHistoryBloc>(),
      child: SingleChildScrollView(
        child: Column(
          children: [
            BlocBuilder<ApprovalsHistoryBloc, ApprovalsHistoryState>(
              builder: (context, state) {
                if (state is Empty) {
                  BlocProvider.of<ApprovalsHistoryBloc>(
                    context,
                    listen: false,
                  ).add(GetApprovalsHistoryEvent());
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
                  final ApprovalsHistoryListEntitie items = state.items!;
                  return SizedBox(
                    height: 550,
                    child: ApprovalsHistory(
                      data: items.data,
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
