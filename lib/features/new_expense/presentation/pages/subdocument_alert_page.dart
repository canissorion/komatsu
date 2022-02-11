import 'package:flutter/material.dart';
import 'package:kcc_mobile_app/features/new_expense/presentation/pages/subdocument_selector_list.dart';
import '../../../../core/utils/komatsu_colors.dart';
import '../../../../shared/presentation/widgets/appbar_widget.dart';
import '../../../../shared/presentation/widgets/drawer_widget.dart';

class SubDocumentAlertPage extends StatelessWidget {
  const SubDocumentAlertPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(),
      drawer: const DrawerWidget(),
      backgroundColor: customBlue,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.45,
                width: MediaQuery.of(context).size.width * 0.7,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: const Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'IMPORTANTE',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey[800],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        '''
Para usuarios de fondos a
rendir Permanentes no es
posible combinar gastos de
KM/Viaticos y Notas de
Credito en una unica
rendicion. Deberan ingresas
KM/Biaticos en rendiciones
separadas de las rendiciones
de Notas de credito
                          ''',
                        textAlign: TextAlign.left,
                        style: TextStyle(fontSize: 17),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            child: const Text('CANCEL'),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return const SubDocumentSelectorListPage();
                                  },
                                ),
                              );
                            },
                            child: const Text('OK'),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
