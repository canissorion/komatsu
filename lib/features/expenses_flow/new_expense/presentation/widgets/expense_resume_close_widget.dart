import 'package:flutter/material.dart';
import '../../../../../core/utils/komatsu_colors.dart';
import '../../../../../core/utils/number_format.dart';

class ExpenseResumeCloseWidget extends StatelessWidget {
  const ExpenseResumeCloseWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Resumen de rendición',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 15,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Expanded(child: SizedBox()),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: const [
                    Text(
                      'Gastos',
                      style: TextStyle(color: customBlue),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'IVA',
                      style: TextStyle(color: customBlue),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Retención',
                      style: TextStyle(color: customBlue),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Vales',
                      style: TextStyle(color: customBlue),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Saldo por pagar al trabajador',
                      style: TextStyle(color: customBlue),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      numberFormat(32),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      '100',
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      '100',
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      numberFormat(32),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      numberFormat(32),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 60,
                ),
              ],
            ),
          ),
          const Divider(
            thickness: 3,
          ),
          Container(
            margin: const EdgeInsets.all(15),
            child: Row(
              children: [
                SizedBox(
                  width: 160,
                  height: 35,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      textStyle: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                      primary: Colors.green,
                    ),
                    onPressed: () {},
                    child: const Text('ENVIAR SOLICITUD'),
                  ),
                ),
                const SizedBox(
                  height: 60,
                  width: 30,
                ),
                SizedBox(
                  width: 120,
                  height: 35,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      textStyle: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                      primary: Colors.red,
                    ),
                    onPressed: () {},
                    child: const Text('CANCELAR'),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
