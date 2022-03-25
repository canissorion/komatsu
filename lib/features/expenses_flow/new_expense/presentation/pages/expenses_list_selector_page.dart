import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kcc_mobile_app/features/expenses_flow/new_expense/presentation/bloc/new_expense_bloc.dart';
import 'package:kcc_mobile_app/features/expenses_flow/new_expense/presentation/bloc/vales_bloc/vales_bloc.dart';

import '../../../../../core/utils/komatsu_colors.dart';
import '../../../../../core/utils/number_format.dart';
import '../../../../../injection_container.dart';
import '../../../../../shared/presentation/widgets/appbar_widget.dart';
import '../../../../../shared/presentation/widgets/drawer_widget.dart';
import '../../../../../shared/presentation/widgets/information_title_widget.dart';
import '../../domain/entities/new_expense_entitie.dart';

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
          body: Column(children: [
            SizedBox(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 30.0, top: 40, bottom: 10),
                    child: Text(
                      'VALES DISPONIBLES',
                      style: TextStyle(
                          color: customBlue,
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.65,
                    child: ListView.builder(
                        itemCount: 4,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              Divider(
                                thickness: 2,
                              ),
                              SizedBox(
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Column(
                                      children: [
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Checkbox(
                                          value: false,
                                          onChanged: (value) {},
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
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
                                    SizedBox(
                                      width: 40,
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
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
                                Divider(
                                  thickness: 2,
                                ),
                            ],
                          );
                        }),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: Text('AGREGAR'),
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all<Color>(customBlue)),
                      ),
                      ElevatedButton(
                          onPressed: () {},
                          child: Text('CANCELAR'),
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  customBlue))),
                    ],
                  )
                ],
              ),
            )
          ])),
    );
  }
}
