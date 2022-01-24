import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kcc_mobile_app/features/detalle_rendicion/domain/entities/detalle_rendicion_entitie.dart';
import 'package:kcc_mobile_app/features/detalle_rendicion/presentation/widgets/detalle_rendicion_final_widget.dart';

import '../../../../injection_container.dart';
import '../../../../shared/presentation/widgets/appbar_widget.dart';
import '../../../../shared/presentation/widgets/cabezera_titulo_widget.dart';
import '../../../../shared/presentation/widgets/drawer_widget.dart';

import '../bloc/detalle_rendicion_bloc.dart';
import '../widgets/cierre_tarea_widget.dart';

import '../widgets/responsible_details_widget.dart';

class DetalleRendicionFinalPage extends StatelessWidget {
  const DetalleRendicionFinalPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<DetalleRendicionBloc>(),
      child: Scaffold(
        appBar: AppBarWidget(),
        drawer: const DrawerWidget(),
        body: Column(
          children: [
            BlocBuilder<DetalleRendicionBloc, DetalleRendicionState>(
              builder: (context, state) {
                if (state is Empty) {
                  BlocProvider.of<DetalleRendicionBloc>(
                    context,
                    listen: false,
                  ).add(GetDetalleRendicionEvent());
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
                  final DetalleRendicionEntitie detalleRendicion =
                      state.detalleRendicion!;
                  return Column(
                    children: [
                      const CabezeraTitulo(
                        folio: "4000088",
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.756,
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 18.0,
                                  right: 18,
                                ),
                                child: Column(
                                  children: [
                                    DetalleRendicionFinalWidget(
                                      detalleRendicion: state.detalleRendicion!,
                                    )
                                  ],
                                ),
                              ),
                              /*DatosUsuarioRendicionWidget(
                                detalleRendicion: state.detalleRendicion!,
                              ),
                              const Divider(
                                thickness: 2,
                              ),
                              DatosUsuarioRendicionWidget(
                                detalleRendicion: state.detalleRendicion!,
                              ),*/
                            ],
                          ),
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
