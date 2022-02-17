import 'package:flutter/material.dart';
import 'package:kcc_mobile_app/core/utils/komatsu_colors.dart';
import 'package:kcc_mobile_app/features/order_release/presentation/pages/mass_approve_page.dart';
import 'package:kcc_mobile_app/features/order_release/presentation/pages/mass_reject_page.dart';
import 'package:kcc_mobile_app/features/order_release/presentation/widgets/release_oc_header_widget.dart';
import 'package:kcc_mobile_app/features/order_release/presentation/widgets/title_data_widget.dart';
import 'package:kcc_mobile_app/shared/presentation/widgets/appbar_widget.dart';
import 'package:kcc_mobile_app/shared/presentation/widgets/drawer_widget.dart';

class ReleaseOcDetailPage extends StatelessWidget {
  const ReleaseOcDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(),
      drawer: const DrawerWidget(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ReleaseOcHeaderWidget(),
            Row(
              children: const [
                SizedBox(
                  width: 20,
                ),
                TitleDataWidget(
                  title: 'Fecha Registro',
                  info: '2022-01-27',
                ),
                SizedBox(
                  width: 10,
                ),
                TitleDataWidget(
                  title: 'N Orden',
                  info: '4506275811',
                ),
              ],
            ),
            Row(
              children: const [
                SizedBox(
                  width: 20,
                ),
                TitleDataWidget(
                  title: 'Urg. Neces.',
                  info: 'Norma Nacional',
                ),
                SizedBox(
                  width: 10,
                ),
                TitleDataWidget(
                  title: 'Grp. Compra',
                  info: '109',
                ),
              ],
            ),
            Row(
              children: const [
                SizedBox(
                  width: 20,
                ),
                TitleDataWidget(
                  title: 'Monto Total',
                  info: '\$ 249.455',
                ),
                SizedBox(
                  width: 10,
                ),
                TitleDataWidget(
                  title: 'Moneda',
                  info: 'CLP',
                ),
              ],
            ),
            Row(
              children: const [
                SizedBox(
                  width: 20,
                ),
                TitleDataWidget(
                  title: 'Proveedor',
                  info: '0969190509',
                ),
              ],
            ),
            Row(
              children: const [
                SizedBox(
                  width: 20,
                ),
                TitleDataWidget(
                  title: 'Nombre Proveedor',
                  info: 'ACEPTA.COM S.A.',
                ),
              ],
            ),
            Row(
              children: const [
                SizedBox(
                  width: 20,
                ),
                TitleDataWidget(
                  title: 'Centro',
                  info: '3089',
                ),
                SizedBox(
                  width: 10,
                ),
                TitleDataWidget(
                  title: 'Nombre Centro',
                  info: 'Santiago KCC',
                ),
              ],
            ),
            Row(
              children: const [
                SizedBox(
                  width: 20,
                ),
                TitleDataWidget(
                  title: 'Solicitante',
                  info: 'FARFAN GODOY \nDANIELA ALEJANDRA',
                ),
              ],
            ),
            Row(
              children: const [
                SizedBox(
                  width: 20,
                ),
                TitleDataWidget(
                  title: 'Num. Necesidad',
                  info: '0',
                ),
                SizedBox(
                  width: 10,
                ),
                TitleDataWidget(
                  title: 'Org. de Compras',
                  info: '3001',
                ),
              ],
            ),
            Row(
              children: const [
                SizedBox(
                  width: 20,
                ),
                TitleDataWidget(
                  title: 'Usuario Liberador',
                  info: 'ALEJANDRA ELIZABETH FUENTES \nVILLEGAS',
                ),
              ],
            ),
            Row(
              children: const [
                SizedBox(
                  width: 20,
                ),
                TitleDataWidget(
                  title: 'Prioridad de la',
                  info: 'CONVENIO / CONTRATO',
                ),
              ],
            ),
            SizedBox(
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
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: const [
                            Text('PDF',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                )),
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
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: const [
                            Text('SAP',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                )),
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const TitleDataBlueWidget(
                          title: 'Cod Interno',
                          data: 'EXT47000000151066',
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
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
                          style: TextStyle(color: Colors.white, fontSize: 16),
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
                      children: const [
                        TitleDataBlueWidget(
                          title: 'Fecha Lib',
                          data: '0000-00-00',
                        ),
                        SizedBox(
                          width: 100,
                        ),
                        TitleDataBlueWidget(
                          title: 'Enviado',
                          data: 'X',
                        ),
                        SizedBox(
                          width: 20,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        TitleDataBlueWidget(
                          title: 'Usuario',
                          data: 'U10020088',
                        ),
                        SizedBox(
                          width: 100,
                        ),
                        TitleDataBlueWidget(
                          title: 'Estatus Liberacion',
                          data: 'A',
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const TitleDataBlueWidget(
                      title: 'Nombre Liberador',
                      data: 'Alejandra Fuentes Villegas',
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const TitleDataBlueWidget(
                      title: 'Correo',
                      data: 'alejandra.fientes@kcl.cl',
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
