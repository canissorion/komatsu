import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/komatsu_colors.dart';
import '../../../../../injection_container.dart';
import '../../../../../shared/presentation/widgets/appbar_widget.dart';
import '../../../../../shared/presentation/widgets/drawer_widget.dart';
import '../../../../../shared/presentation/widgets/information_title_widget.dart';
import '../bloc/vales_bloc/vales_bloc.dart';

class ExpenseListSelectorPage extends StatelessWidget {
  const ExpenseListSelectorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<ValesBloc>(),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBarWidget(),
        drawer: const DrawerWidget(),
        body: Column(
          children: [
            SizedBox(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 30.0, top: 40, bottom: 10),
                    child: Text(
                      'VALES DISPONIBLES',
                      style: TextStyle(
                        color: customBlue,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.65,
                    child: ListView.builder(
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            const Divider(
                              thickness: 2,
                            ),
                            SizedBox(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Column(
                                    children: [
                                      const SizedBox(
                                        height: 20,
                                      ),
                                      Checkbox(
                                        value: false,
                                        onChanged: (value) {},
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Column(
                                    children: const [
                                      InformationTitleWidget(
                                        title: 'Folio',
                                        info: '#370000002',
                                      ),
                                      InformationTitleWidget(
                                        title: 'Monto',
                                        info: 'CLP \$888888',
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    width: 40,
                                  ),
                                  Column(
                                    children: const [
                                      InformationTitleWidget(
                                        title: 'Empresa',
                                        info: '3001',
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            if (index == 3)
                              const Divider(
                                thickness: 2,
                              ),
                          ],
                        );
                      },
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(customBlue),
                        ),
                        child: const Text('AGREGAR'),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                            customBlue,
                          ),
                        ),
                        child: const Text('CANCELAR'),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
