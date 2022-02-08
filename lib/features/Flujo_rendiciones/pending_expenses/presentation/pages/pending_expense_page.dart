import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kcc_mobile_app/core/utils/komatsu_colors.dart';
import 'package:kcc_mobile_app/features/Flujo_rendiciones/pending_expenses/presentation/widgets/infinite_request_list_widget.dart';
import 'package:kcc_mobile_app/shared/presentation/widgets/appbar_widget.dart';
import 'package:kcc_mobile_app/shared/presentation/widgets/drawer_widget.dart';

import 'package:kcc_mobile_app/injection_container.dart';
import '../bloc/expense_list_bloc.dart';
import '../widgets/infinite_request_list_widget.dart';
import '../widgets/search_bar_widget.dart';

class PendingExpensePage extends StatelessWidget {
  const PendingExpensePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Map<int, Widget> _tabs = {
      0: const Text('Todos'),
      1: const Text('Nuevos'),
      2: const Padding(
        padding: EdgeInsets.all(8),
        child: Text('En Tratamiento'),
      )
    };

    return Scaffold(
      appBar: AppBarWidget(),
      drawer: const DrawerWidget(),
      body: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (BuildContext context) => sl<PendingExpenseBloc>(),
          )
        ],
        child: BlocBuilder<PendingExpenseBloc, PendingExpenseState>(
          builder: (context, state) {
            if (state is Empty) {
              BlocProvider.of<PendingExpenseBloc>(
                context,
                listen: false,
              ).add(GetPendingExpenseEvent());
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
            }
            return SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  const SizedBox(
                    height: 10,
                  ),
                  const Center(
                    child: Text(
                      'Rendiciones pendientes \nde aprobación',
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  CupertinoSegmentedControl(
                    children: _tabs,
                    padding: const EdgeInsets.all(15),
                    onValueChanged: (i) {},
                    borderColor: customAccentBlue,
                    selectedColor: customAccentBlue,
                  ),
                  SearchingBarWidget(
                    state: state,
                  ),
                  const InfiniteRequestListWidget()
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
