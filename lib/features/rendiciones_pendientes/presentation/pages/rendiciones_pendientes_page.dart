import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/utils/komatsu_colors.dart';
import '../../../../injection_container.dart';
import '../../../../shared/presentation/widgets/appbar_widget.dart';
import '../../../../shared/presentation/widgets/drawer_widget.dart';
import '../bloc/listado_solicitudes_bloc.dart';
import '../widgets/lista_infinita_solicitudes_widget.dart';
import '../widgets/search_bar_widget.dart';

class RendicionesPendientesPage extends StatelessWidget {
  const RendicionesPendientesPage({Key? key}) : super(key: key);

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
            create: (BuildContext context) => sl<PendingItemsBloc>(),
          )
        ],
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              const SizedBox(
                height: 10,
              ),
              const Center(
                child: Text(
                  'Rendiciones pendientes \nde aprobación',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
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
              SearchingBarWidget(),
              const ListaInfinitaSolicitudesWidget()
            ],
          ),
        ),
      ),
    );
  }
}
