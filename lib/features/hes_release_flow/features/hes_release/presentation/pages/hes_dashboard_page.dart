import 'package:flutter/material.dart';
import 'package:kcc_mobile_app/shared/presentation/widgets/appbar_widget.dart';
import 'package:kcc_mobile_app/shared/presentation/widgets/drawer_widget.dart';

import '../../../../../../core/utils/komatsu_colors.dart';
import '../../../../../../core/utils/navigator_utils.dart';
import 'hes_detail_page.dart';

class HesDashboardPage extends StatelessWidget {
  const HesDashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(),
      drawer: const DrawerWidget(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: const [
                  Text(
                    'Accion Masiva',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    'HES',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  )
                ],
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 20, right: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'FECHA HES',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                    color: customBlue,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    DateSelectorWidget(
                      titulo: 'Desde',
                    ),
                    DateSelectorWidget(
                      titulo: 'Hasta',
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Accion HES',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                    color: customBlue,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                DropdownButton<String>(
                  value: 'Libreacion Realizadas',
                  items: const [
                    DropdownMenuItem(
                      child: Text('Liberacion Realizadas'),
                      value: 'Libreacion Realizadas',
                    )
                  ],
                  onChanged: (onChanged) {},
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      child: Text('ACTUALIZAR'),
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(customBlue),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
          Divider(
            thickness: 2,
          ),
          SizedBox(
            height: 10,
          ),
          GestureDetector(
            behavior: HitTestBehavior.translucent,
            onTap: () {
              pushToPage(context, HesDetailPage());
            },
            child: HesResumeWidget(),
          )
        ],
      ),
    );
  }
}

class HesResumeWidget extends StatelessWidget {
  const HesResumeWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Checkbox(
              value: false,
              onChanged: (onChanged) {},
            ),
            const SizedBox(
              width: 5,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      'OC #4700019826',
                      style: TextStyle(
                          color: Colors.grey[800], fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 110,
                    ),
                    Text('18-01-2022')
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text('HES #1001046561'),
                const SizedBox(
                  height: 2,
                ),
                const Text('POS #00020'),
                const SizedBox(
                  height: 2,
                ),
                const Text('Valor de Libreacion UF 3.00'),
                const SizedBox(
                  height: 2,
                ),
                Row(
                  children: [
                    Text('Valor Total OC UF 3000'),
                    SizedBox(
                      width: 50,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.yellow[700],
                          borderRadius: BorderRadius.circular(4)),
                      child: const Padding(
                        padding: EdgeInsets.all(5.0),
                        child: Text(
                          'En Tratamiento',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w500),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            )
          ],
        ),
        Divider(
          thickness: 2,
        ),
      ],
    );
  }
}

class DateSelectorWidget extends StatelessWidget {
  const DateSelectorWidget({Key? key, required this.titulo}) : super(key: key);

  final String titulo;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(titulo),
        Container(
          width: MediaQuery.of(context).size.width * 0.337,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              border: Border.all(
                width: 1.5,
                color: Colors.grey,
              )),
          child: Row(
            children: [
              const SizedBox(
                width: 10,
              ),
              const Text('03/03/2022'),
              const SizedBox(
                width: 10,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(4),
                    bottomRight: Radius.circular(4),
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Icon(Icons.calendar_month),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
