import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/komatsu_colors.dart';
import '../../../../../injection_container.dart';
import '../../../../../shared/presentation/widgets/appbar_widget.dart';
import '../../../../../shared/presentation/widgets/drawer_widget.dart';
import '../../data/models/order_release_resume_list_model.dart';
import '../bloc/order_release_bloc.dart';
import '../widgets/history_widget.dart';
import '../widgets/release_oc_attachment_widget.dart';
import '../widgets/release_oc_detail_widget.dart';
import '../widgets/release_oc_header_widget.dart';
import '../widgets/tab_bar_widget.dart';

class ReleaseOcDetailPage extends StatelessWidget {
  const ReleaseOcDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<OrderReleaseBloc>(),
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBarWidget(),
          drawer: const DrawerWidget(),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BlocBuilder<OrderReleaseBloc, OrderReleaseState>(
                  builder: (context, state) {
                    if (state is Empty) {
                      BlocProvider.of<OrderReleaseBloc>(
                        context,
                        listen: false,
                      ).add(GetOrderReleaseEvent());
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
                      final OrderReleaceResumeList orderRelease =
                          state.orderRelease!;
                      return Column(
                        children: [
                          ReleaseOcHeaderWidget(
                            data: orderRelease,
                          ),
                          const CustomTabBarNewExpenseWidget(),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.695,
                            child: TabBarView(
                              children: [
                                ReleaseDetailWidget(
                                  orderRelease: orderRelease,
                                ),
                                const ReleaseAttachmentWidget(),
                                //const SizedBox(),
                                HistoryLiberatorWidget(
                                  orderRelease: orderRelease,
                                )
                                /*ReleaseLiberationsWidget(
                                  orderRelease: orderRelease,
                                )*/
                                //ExpensesForm(),
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

class TitleDataBlueWidget extends StatelessWidget {
  const TitleDataBlueWidget({Key? key, required this.title, required this.data})
      : super(key: key);

  final String title;
  final String data;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(color: customBlue, fontSize: 16),
        ),
        Text(
          data,
          style: const TextStyle(
            color: customBlue,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        )
      ],
    );
  }
}
