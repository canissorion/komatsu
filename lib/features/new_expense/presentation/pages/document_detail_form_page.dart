import 'package:flutter/material.dart';
import 'package:kcc_mobile_app/core/utils/komatsu_colors.dart';
import 'package:kcc_mobile_app/features/new_expense/presentation/widgets/date_selector_widget.dart';
import 'package:kcc_mobile_app/features/new_expense/presentation/widgets/description_field_widget.dart';
import 'package:kcc_mobile_app/features/new_expense/presentation/widgets/form_field_widget.dart';
import 'package:kcc_mobile_app/features/new_expense/presentation/widgets/title_and_selector_widget.dart';
import 'package:kcc_mobile_app/shared/presentation/widgets/appbar_widget.dart';
import 'package:kcc_mobile_app/shared/presentation/widgets/drawer_widget.dart';

class DocumentDetailFormPage extends StatelessWidget {
  const DocumentDetailFormPage({Key? key, required this.form})
      : super(key: key);

  final Widget form;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: customBlue,
      appBar: AppBarWidget(),
      drawer: const DrawerWidget(),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.85,
          child: SingleChildScrollView(
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'DATOS DEL DOCUMENTO',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                form,
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.3,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Text('Finalizar'),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
