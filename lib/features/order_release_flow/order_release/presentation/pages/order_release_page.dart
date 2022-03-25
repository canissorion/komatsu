import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../injection_container.dart';

import '../../../../../shared/presentation/widgets/appbar_widget.dart';
import '../../../../../shared/presentation/widgets/drawer_widget.dart';
import '../../data/models/order_release_resume_list_model.dart';
import '../../domain/entitites/order_release_entitie.dart';
import '../bloc/order_release_bloc.dart';
import '../widgets/filters_widget.dart';
import '../widgets/mass_action_widget.dart';
import '../widgets/order_release_card_widget.dart';
import '../widgets/search_bar_oc_widget.dart';
import 'release_oc_detail_page.dart';

class OrderReleasePage extends StatelessWidget {
  const OrderReleasePage({Key? key}) : super(key: key);

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
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'Liberación\nOrdenes de Compra',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 20),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      //const MassActionWidget(),
                      const FiltersWidget(),
                      const SearchingBarOcWidget(),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.618,
                        child: ListView.builder(
                            itemCount: orderRelease.data!.length,
                            itemBuilder: (context, i) {
                              return GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) {
                                        return const ReleaseOcDetailPage();
                                      },
                                    ),
                                  );
                                },
                                child: OrderReleaseCardWidget(
                                  data: orderRelease.data![i],
                                ),
                              );
                            }),
                      ),
                    ],
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
