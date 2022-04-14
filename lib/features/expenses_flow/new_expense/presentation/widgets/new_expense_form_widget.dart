import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// ignore: prefer_relative_imports
import 'package:kcc_mobile_app/features/expenses_flow/new_expense/presentation/widgets/obtain_data_widget.dart';

import '../../../../../injection_container.dart';
import '../../../../../shared/presentation/widgets/information_title_widget.dart';
import '../../domain/entities/new_expense_entitie.dart';
import '../../domain/entities/new_expense_id_domain_parameter_value_entitie.dart';
import '../bloc/form_bloc/form_bloc.dart' as fr;
import '../bloc/vales_bloc/vales_bloc.dart';
import '../pages/expenses_list_selector_page.dart';

class NewExpenseFormWidget extends StatelessWidget {
  NewExpenseFormWidget({
    Key? key,
    required this.newExpense,
  }) : super(key: key);
  final NewExpenseEntitie newExpense;
  final List<DomainParameterValueEntitie> listCompany = [];
  final List<DomainParameterValueEntitie> listOffice = [];
  final List<DomainParameterValueEntitie> listCurrency = [];

  @override
  Widget build(
    BuildContext context,
  ) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => sl<fr.FormBloc>(),
        ),
        BlocProvider(create: (context) => sl<ValesBloc>())
      ],
      child: BlocBuilder<fr.FormBloc, fr.FormState>(
        builder: (context, state) {
          return Column(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.90,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ObtainData(
                      codes: "EMPRESA",
                      newExpenseData: newExpense,
                      list: listCompany,
                      title: 'Empresa Rendición',
                      value: state.dropbox1,
                      data: 8,
                      change: (int value) {
                        BlocProvider.of<fr.FormBloc>(
                          context,
                          listen: false,
                        ).add(fr.ChangeDrop1(value));
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    ObtainData(
                      codes: "OFICINA_VENTA",
                      newExpenseData: newExpense,
                      list: listOffice,
                      title: 'Oficina de Ventas',
                      value: state.dropbox2,
                      data: 7,
                      change: (int value) {
                        BlocProvider.of<fr.FormBloc>(
                          context,
                          listen: false,
                        ).add(fr.ChangeDrop2(value));
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    ObtainData(
                      codes: "MONEDA",
                      newExpenseData: newExpense,
                      list: listCurrency,
                      title: 'Moneda',
                      data: 0,
                      value: state.dropbox3,
                      change: (int value) {
                        BlocProvider.of<fr.FormBloc>(
                          context,
                          listen: false,
                        ).add(fr.ChangeDrop3(value));
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Objetivo del Gasto',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey[800],
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(color: Colors.white),
                      child: const TextField(
                        keyboardType: TextInputType.multiline,
                        maxLines: null,
                        minLines: 3,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              BlocBuilder<ValesBloc, ValesState>(
                builder: (context, statevale) {
                  if (statevale is Loaded) {
                    return SizedBox(
                      width: MediaQuery.of(context).size.width * 0.9,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Seleccion de Vales a Rendir',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey[800],
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Divider(
                                thickness: 2,
                              ),
                              SizedBox(
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
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
                                    ),
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: const [
                                        SizedBox(
                                          height: 40,
                                        ),
                                        Icon(Icons.delete)
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return const ExpenseListSelectorPage();
                                  },
                                ),
                              );
                            },
                            child: const Text('AGREGAR +'),
                          )
                        ],
                      ),
                    );
                  } else {
                    return SizedBox(
                      width: MediaQuery.of(context).size.width * 0.85,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Seleccion de Vales a Rendir',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey[800],
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              BlocProvider.of<ValesBloc>(
                                context,
                                listen: false,
                              ).add(GetValesEvent());
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return const ExpenseListSelectorPage();
                                  },
                                ),
                              );
                            },
                            child: const Text('AGREGAR +'),
                          )
                        ],
                      ),
                    );
                  }
                },
              ),
            ],
          );
        },
      ),
    );
  }
}
