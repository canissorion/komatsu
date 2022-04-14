import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../injection_container.dart';
import '../../../../../shared/presentation/widgets/appbar_widget.dart';
import '../../../../../shared/presentation/widgets/drawer_widget.dart';
import '../../data/models/order_release_resume_list_model.dart';
import '../bloc/order_release_bloc.dart';
import '../widgets/approve_order_resume_widget.dart';
import '../widgets/mass_action_title_widget.dart';
import 'mass_approve_completed_page.dart';

class MassApprovePage extends StatelessWidget {
  const MassApprovePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(),
      drawer: const DrawerWidget(),
      body: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (BuildContext context) => sl<OrderReleaseBloc>(),
          )
        ],
        child: Column(
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
                      const MassActionTitleWidget(),
                      ApproveOrderResumeWidget(
                        orderRelease: orderRelease,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.green,
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return const MassApproveCompletedPage();
                              },
                            ),
                          );
                        },
                        child: const Text(
                          'LIBERAR',
                          style: TextStyle(fontWeight: FontWeight.w500),
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
