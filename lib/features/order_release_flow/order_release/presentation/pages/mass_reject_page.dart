import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kcc_mobile_app/features/order_release_flow/order_release/domain/entitites/order_release_entitie.dart';
import 'package:kcc_mobile_app/features/order_release_flow/order_release/presentation/bloc/order_release_bloc.dart';

import '../../../../../injection_container.dart';
import '../../../../../shared/presentation/widgets/appbar_widget.dart';
import '../../../../../shared/presentation/widgets/drawer_widget.dart';
import '../widgets/mass_action_title_widget.dart';
import '../widgets/reject_order_resume_widget.dart';
import 'mass_reject_completed_page.dart';

class MassRejectPage extends StatelessWidget {
  const MassRejectPage({Key? key}) : super(key: key);

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
        child: SingleChildScrollView(
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
                    final OrderReleaseEntitie orderRelease =
                        state.orderRelease!;
                    return Column(
                      children: [
                        const MassActionTitleWidget(),
                        RejectOrderResumeWidget(
                          orderRelease: orderRelease,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.red[400],
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return const MassRejectCompletedPage();
                                },
                              ),
                            );
                          },
                          child: const Text(
                            'RECHAZAR',
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
      ),
    );
  }
}
