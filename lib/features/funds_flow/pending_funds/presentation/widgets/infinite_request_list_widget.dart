import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kcc_mobile_app/features/funds_flow/expense_solicitude/presentation/pages/expense_solicitude_page.dart';
import 'package:kcc_mobile_app/features/funds_flow/pending_funds/presentation/widgets/approve_cards_widget.dart';

import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../bloc/funds_list_bloc.dart';

class InfiniteRequestListWidget extends StatelessWidget {
  const InfiniteRequestListWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.62,
      child: BlocBuilder<PendingFundsBloc, PendingFundsState>(
        builder: (context, state) {
          if (state is Empty) {
            BlocProvider.of<PendingFundsBloc>(
              context,
              listen: false,
            ).add(GetPendingFundsEvent());
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
                BlocProvider.of<PendingFundsBloc>(
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
                          builder: (context) {
                            return const ExpenseSolicitudePage();
                          },
                        ),
                      );
                    },
                    child: ApprobeCards(
                      data: state.items!,
                    ),
                  ),
                ),
                itemCount: 1, //state.items!.data.length,
              ),
            );
          }
        },
      ),
    );
  }
}
