import 'package:flutter/material.dart';
import '../../../../core/utils/komatsu_colors.dart';
import '../../../../shared/presentation/widgets/appbar_widget.dart';
import '../../../../shared/presentation/widgets/drawer_widget.dart';

class ExpenseListSelectorPage extends StatelessWidget {
  const ExpenseListSelectorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(),
      drawer: const DrawerWidget(),
      body: Container(
        width: MediaQuery.of(context).size.width,
        color: customBlue,
        child: Column(
          children: [
            const SizedBox(
              height: 70,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              color: Colors.white,
              child: Table(
                border: TableBorder.all(
                  color: customBlue,
                  width: 2,
                ),
                columnWidths: const {
                  0: FlexColumnWidth(2),
                  1: FlexColumnWidth(4),
                  2: FlexColumnWidth(3),
                  3: FlexColumnWidth(2),
                  4: FlexColumnWidth(4),
                },
                children: [
                  TableRow(
                    decoration: BoxDecoration(color: Colors.grey[200]),
                    children: const [
                      SizedBox(),
                      Padding(
                        padding: EdgeInsets.only(top: 8.0, bottom: 8),
                        child: Center(child: Text('Folio')),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 8.0, bottom: 8),
                        child: Center(child: Text('Empresa')),
                      ),
                      SizedBox(),
                      Padding(
                        padding: EdgeInsets.only(top: 8.0, bottom: 8),
                        child: Center(child: Text('Monto')),
                      ),
                    ],
                  ),
                  TableRow(
                    children: [
                      Checkbox(
                        checkColor: Colors.white,
                        value: false,
                        onChanged: (bool? value) {},
                      ),
                      const TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Center(child: Text('37000000002')),
                      ),
                      const TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Center(child: Text('3001')),
                      ),
                      const TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Center(child: Text('CLP')),
                      ),
                      const TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Center(child: Text('888888')),
                      ),
                    ],
                  ),
                  TableRow(
                    children: [
                      Checkbox(
                        checkColor: Colors.white,
                        value: false,
                        onChanged: (bool? value) {},
                      ),
                      const TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Center(child: Text('37000000002')),
                      ),
                      const TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Center(child: Text('3001')),
                      ),
                      const TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Center(child: Text('CLP')),
                      ),
                      const TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Center(child: Text('888888')),
                      ),
                    ],
                  ),
                  TableRow(
                    children: [
                      Checkbox(
                        checkColor: Colors.white,
                        value: false,
                        onChanged: (bool? value) {},
                      ),
                      const TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Center(child: Text('37000000002')),
                      ),
                      const TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Center(child: Text('3001')),
                      ),
                      const TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Center(child: Text('CLP')),
                      ),
                      const TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Center(child: Text('888888')),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('Seleccionar'),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}