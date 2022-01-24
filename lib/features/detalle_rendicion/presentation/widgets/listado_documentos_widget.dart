import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kcc_mobile_app/core/utils/komatsu_colors.dart';
import 'package:kcc_mobile_app/features/detalle_documento/presentation/pages/detalle_documento_page.dart';
import 'package:kcc_mobile_app/features/detalle_rendicion/presentation/bloc/detalle_rendicion_bloc.dart';
import 'package:kcc_mobile_app/features/detalle_rendicion/presentation/pages/detalle_rendicion_page.dart';
import 'package:kcc_mobile_app/features/detalle_rendicion/presentation/widgets/titulo_informacion_widget.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class ListadoDocumentosWidget extends StatelessWidget {
  const ListadoDocumentosWidget({
    Key? key,
    required this.refreshController,
    required this.items,
  }) : super(key: key);

  final RefreshController refreshController;
  final List items;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 18.0, right: 18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Documentos Ingresados (${items.length})'),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.67,
            child: SmartRefresher(
              enablePullUp: true,
              enablePullDown: false,
              onLoading: () {
                BlocProvider.of<DetalleRendicionBloc>(
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
              controller: refreshController,
              child: ListView.builder(
                itemBuilder: (context, i) => Padding(
                  padding: const EdgeInsets.all(0),
                  child: GestureDetector(
                    behavior: HitTestBehavior.translucent,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return const DetalleDocumentoPage();
                          },
                        ),
                      );
                    },
                    child: Column(
                      children: [
                        const Divider(
                          thickness: 1,
                          color: customBlue,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    const TituloInformacionWidget(
                                      tituloDato: 'Posición',
                                      infoDato: '1',
                                    ),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.1,
                                    ),
                                    const TituloInformacionWidget(
                                      tituloDato: 'N° de Documento',
                                      infoDato: '66',
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    const TituloInformacionWidget(
                                      tituloDato: 'Monto',
                                      infoDato: '\$61.905',
                                    ),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.1,
                                    ),
                                    const TituloInformacionWidget(
                                      tituloDato: 'Tipo Documento',
                                      infoDato: 'Boleta de Gasto',
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const Icon(
                              Icons.arrow_forward_ios,
                              color: customBlue,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                itemCount: items.length,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
