// ignore_for_file: lines_longer_than_80_chars

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kcc_mobile_app/core/utils/komatsu_colors.dart';
import 'package:kcc_mobile_app/features/detalle_documento/presentation/pages/detalle_documento_page.dart';
import 'package:kcc_mobile_app/features/detalle_rendicion/presentation/widgets/custom_tabbar_widget.dart';
import 'package:kcc_mobile_app/features/detalle_rendicion/presentation/widgets/detalles_rendicion_widget.dart';
import 'package:kcc_mobile_app/features/detalle_rendicion/presentation/widgets/flujo_aprobacion_widget.dart';
import 'package:kcc_mobile_app/features/detalle_rendicion/presentation/widgets/listado_documentos_widget.dart';
import 'package:kcc_mobile_app/features/detalle_rendicion/presentation/widgets/responsible_details_widget.dart';
import 'package:kcc_mobile_app/features/detalle_rendicion/presentation/widgets/titulo_informacion_widget.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../../../../injection_container.dart';
import '../../../../shared/presentation/widgets/appbar_widget.dart';
import '../../../../shared/presentation/widgets/cabezera_titulo_widget.dart';
import '../../../../shared/presentation/widgets/drawer_widget.dart';
import '../../domain/entities/detalle_rendicion_entitie.dart';
import '../bloc/detalle_rendicion_bloc.dart';
import '../widgets/datos_rendicion_widget.dart';
import '../widgets/datos_usuario_rendicion_widget.dart';
import '../widgets/resumen_rendicion_widget.dart';

class DetalleRendicionPage extends StatelessWidget {
  const DetalleRendicionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<DetalleRendicionBloc>(),
      child: DefaultTabController(
        length: 3,
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
                    final RefreshController refreshController =
                        state.refreshController!;
                    final List items = state.items!;
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const CabezeraTitulo(
                          folio: "4000088",
                        ),
                        const CustomTabBarWidget(),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.695,
                          child: TabBarView(
                            children: [
                              DetalleRendicionWidget(
                                detalleRendicion: detalleRendicion,
                                mark: state.mark!,
                              ),
                              ListadoDocumentosWidget(
                                refreshController: refreshController,
                                items: items,
                              ),
                              const SizedBox()
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
    );
  }
}
