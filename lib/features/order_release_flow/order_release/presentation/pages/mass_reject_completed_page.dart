import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kcc_mobile_app/features/order_release_flow/order_release/domain/entitites/order_release_entitie.dart';
import 'package:kcc_mobile_app/features/order_release_flow/order_release/presentation/bloc/order_release_bloc.dart';

import '../../../../../core/utils/komatsu_colors.dart';
import '../../../../../injection_container.dart';
import '../../../../../shared/presentation/widgets/appbar_widget.dart';
import '../../../../../shared/presentation/widgets/drawer_widget.dart';
import '../widgets/mass_action_title_widget.dart';
import '../widgets/title_data_widget.dart';

class MassRejectCompletedPage extends StatelessWidget {
  const MassRejectCompletedPage({Key? key}) : super(key: key);

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
                  final OrderReleaseEntitie orderRelease = state.orderRelease!;
                  return Column(
                    children: [
                      const MassActionTitleWidget(),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.85,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Row(
                                children: const [
                                  Icon(
                                    Icons.check_box,
                                    color: Colors.red,
                                    size: 30,
                                  ),
                                  SizedBox(
                                    width: 10,
                                    //height: 10,
                                  ),
                                  Text(
                                    "Rechazo de Ordenes de compra Masiva",
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            TitleDataWidget(
                              title: 'N Orden',
                              info: orderRelease.resumeCard.number,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                'Accion concluida exitosamente.',
                                style: TextStyle(
                                  color: customBlue,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                            )
                          ],
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
