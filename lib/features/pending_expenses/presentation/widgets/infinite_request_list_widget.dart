import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../../../expense_detail/presentation/pages/expense_detail_page.dart';
import '../bloc/expense_list_bloc.dart';
import 'document_pending_approve_widget_blocbuilder.dart';

class InfiniteRequestListWidget extends StatelessWidget {
  const InfiniteRequestListWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.62,
      child: BlocBuilder<PendingExpenseBloc, PendingExpenseState>(
        builder: (context, state) {
          if (state is Empty) {
            BlocProvider.of<PendingExpenseBloc>(
              context,
              listen: false,
            ).add(GetPendingExpenseEvent());
            return const Center(
              child: Text('No hay Informacion'),
            );
          } else if (state is Error) {
            return Center(
              child: Text(state.errorMessage),
            );
          } else if (state is Loading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return SmartRefresher(
              enablePullUp: true,
              enablePullDown: false,
              onLoading: () {
                BlocProvider.of<PendingExpenseBloc>(
                  context,
                  listen: false,
                ).add(LoadMoreItemsEvent());
              },
              footer: CustomFooter(
                builder: (BuildContext context, mode) {
                  Widget body;

                  if (mode == LoadStatus.idle) {
                    body = const Text('Cargar más');
                  } else if (mode == LoadStatus.loading) {
                    body = const CircularProgressIndicator();
                  } else if (mode == LoadStatus.canLoading) {
                    body = const Text("Soltar para cargar más");
                  } else {
                    body = const Text('No hay más información');
                  }

                  return SizedBox(
                    height: 55,
                    child: Center(
                      child: body,
                    ),
                  );
                },
              ),
              controller: state.refreshController!,
              child: ListView.builder(
                itemBuilder: (context, i) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    behavior: HitTestBehavior.translucent,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) {
                            return const ExpenseDetailPage();
                          },
                        ),
                      );
                    },
                    child: DocumentPendingApprobe(
                      pendingDocumentDetail: state.pendingDocumentDetail!,
                    ),
                  ),
                ),
                itemCount: state.items!.length,
              ),
            );
          }
        },
      ),
    );
  }
}
