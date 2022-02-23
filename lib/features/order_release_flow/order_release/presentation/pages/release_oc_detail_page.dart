import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kcc_mobile_app/core/utils/datetime_convert.dart';
import 'package:kcc_mobile_app/core/utils/number_format.dart';
import 'package:kcc_mobile_app/features/order_release_flow/order_release/domain/entitites/order_release_entitie.dart';
import 'package:kcc_mobile_app/features/order_release_flow/order_release/presentation/bloc/order_release_bloc.dart';

import '../../../../../core/utils/komatsu_colors.dart';
import '../../../../../injection_container.dart';
import '../../../../../shared/presentation/widgets/appbar_widget.dart';
import '../../../../../shared/presentation/widgets/drawer_widget.dart';
import '../widgets/release_oc_header_widget.dart';
import '../widgets/title_data_widget.dart';
import 'mass_approve_page.dart';
import 'mass_reject_page.dart';

class ReleaseOcDetailPage extends StatelessWidget {
  const ReleaseOcDetailPage({Key? key}) : super(key: key);

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
                    final OrderReleaseEntitie orderRelease =
                        state.orderRelease!;
                    return Column(
                      children: [
                        ReleaseOcHeaderWidget(
                          data: orderRelease,
                        ),
                        Row(
                          children: [
                            const SizedBox(
                              width: 20,
                            ),
                            TitleDataWidget(
                              title: 'Fecha Registro',
                              info:
                                  dateTimeConverter(orderRelease.creationDate),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            TitleDataWidget(
                              title: 'N Orden',
                              info: orderRelease.record.orderNumber.toString(),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const SizedBox(
                              width: 20,
                            ),
                            TitleDataWidget(
                              title: 'Urg. Neces.',
                              info: orderRelease.record.urgency,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            TitleDataWidget(
                              title: 'Grp. Compra',
                              info: orderRelease.record.grpOrder.toString(),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const SizedBox(
                              width: 20,
                            ),
                            TitleDataWidget(
                              title: 'Monto Total',
                              info:
                                  "\$${numberFormat(orderRelease.currency.totalAmount)}",
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            TitleDataWidget(
                              title: 'Moneda',
                              info: orderRelease.currency.code,
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const SizedBox(
                              width: 20,
                            ),
                            TitleDataWidget(
                                title: 'Proveedor',
                                info: orderRelease.provider.providerId
                                    .toString()),
                          ],
                        ),
                        Row(
                          children: [
                            const SizedBox(
                              width: 20,
                            ),
                            TitleDataWidget(
                              title: 'Nombre Proveedor',
                              info: orderRelease.provider.providerName,
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const SizedBox(
                              width: 20,
                            ),
                            TitleDataWidget(
                              title: 'Centro',
                              info: orderRelease.center.centerId.toString(),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            TitleDataWidget(
                              title: 'Nombre Centro',
                              info: orderRelease.center.centerName,
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const SizedBox(
                              width: 20,
                            ),
                            TitleDataWidget(
                              title: 'Solicitante',
                              info:
                                  "${orderRelease.applicant.applicantLastName} \n${orderRelease.applicant.applicantFirstName} ",
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const SizedBox(
                              width: 20,
                            ),
                            TitleDataWidget(
                                title: 'Num. Necesidad',
                                info: orderRelease.needNumber.toString()),
                            const SizedBox(
                              width: 10,
                            ),
                            TitleDataWidget(
                              title: 'Org. de Compras',
                              info: orderRelease.purchasingOrg.toString(),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const SizedBox(
                              width: 20,
                            ),
                            TitleDataWidget(
                              title: 'Usuario Liberador',
                              info:
                                  "${orderRelease.liberator.liberatorLastName} \n${orderRelease.liberator.liberatorFirstName} ",
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const SizedBox(
                              width: 20,
                            ),
                            TitleDataWidget(
                              title: 'Prioridad de la',
                              info: orderRelease.priority,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Container(
                              color: customBlue,
                              height: MediaQuery.of(context).size.height * 0.1,
                              width: MediaQuery.of(context).size.width * 0.45,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  left: 20.0,
                                  right: 20,
                                  top: 6,
                                  bottom: 6,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: const [
                                        Text(
                                          'PDF',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 70,
                                        ),
                                        Icon(
                                          Icons.remove_red_eye,
                                          color: Colors.white,
                                          size: 28,
                                        )
                                      ],
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(top: 12),
                                      child: Text(
                                        '4506275811',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.1,
                            ),
                            Container(
                              color: customBlue,
                              height: MediaQuery.of(context).size.height * 0.1,
                              width: MediaQuery.of(context).size.width * 0.45,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  left: 20.0,
                                  right: 20,
                                  top: 6,
                                  bottom: 6,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: const [
                                        Text(
                                          'SAP',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 70,
                                        ),
                                        Icon(
                                          Icons.remove_red_eye,
                                          color: Colors.white,
                                          size: 28,
                                        )
                                      ],
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(top: 12),
                                      child: Text(
                                        '4506275811',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                        const Padding(
                          padding: EdgeInsets.all(20.0),
                          child: Text(
                            'DOCUMENTOS ADJUNTOS',
                            style: TextStyle(
                              color: customBlue,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.2,
                          color: customBlue,
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const TitleDataBlueWidget(
                                      title: 'Cod Interno',
                                      data: 'EXT47000000151066',
                                    ),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Column(
                                          children: const [
                                            Icon(
                                              Icons.download,
                                              color: Colors.white,
                                              size: 40,
                                            ),
                                            Text(
                                              'Descarga',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 15,
                                              ),
                                            )
                                          ],
                                        ),
                                        const SizedBox(
                                          width: 20,
                                        ),
                                        Column(
                                          children: const [
                                            Icon(
                                              Icons.public,
                                              color: Colors.white,
                                              size: 37,
                                            ),
                                            Text('Descarga',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 15,
                                                ))
                                          ],
                                        )
                                      ],
                                    )
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      'Nombre documento',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 16),
                                    ),
                                    Text(
                                      'S00026_20220127144818.686_X',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                      ),
                                    )
                                  ],
                                ),
                                const Divider(
                                  thickness: 2,
                                  color: Colors.white,
                                  indent: 200,
                                )
                              ],
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(20.0),
                          child: Text(
                            'LIBERACIONES',
                            style: TextStyle(
                              color: customBlue,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Container(
                          color: customBlue,
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    TitleDataBlueWidget(
                                      title: 'Fecha Lib',
                                      data: dateTimeConverter(orderRelease
                                          .liberation.liberationDate),
                                    ),
                                    const SizedBox(
                                      width: 100,
                                    ),
                                    TitleDataBlueWidget(
                                      title: 'Enviado',
                                      data: orderRelease.liberation.sendTo,
                                    ),
                                    const SizedBox(
                                      width: 20,
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    TitleDataBlueWidget(
                                      title: 'Usuario',
                                      data: orderRelease.liberator.liberatorId,
                                    ),
                                    const SizedBox(
                                      width: 100,
                                    ),
                                    TitleDataBlueWidget(
                                      title: 'Estatus Liberacion',
                                      data: orderRelease
                                          .liberation.liberationStatus,
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                TitleDataBlueWidget(
                                  title: 'Nombre Liberador',
                                  data:
                                      "${orderRelease.liberator.liberatorFirstName} ${orderRelease.liberator.liberatorLastName} ",
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                TitleDataBlueWidget(
                                  title: 'Correo',
                                  data: orderRelease.liberator.mail,
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.green,
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return const MassApprovePage();
                                    },
                                  ),
                                );
                              },
                              child: const Text(
                                'APROBAR',
                                style: TextStyle(fontWeight: FontWeight.w500),
                              ),
                            ),
                            const SizedBox(
                              width: 40,
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
                                      return const MassRejectPage();
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
          style: const TextStyle(color: Colors.white, fontSize: 16),
        ),
        Text(
          data,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        )
      ],
    );
  }
}
