import 'package:flutter/material.dart';
import 'package:kcc_mobile_app/core/utils/komatsu_colors.dart';
import 'package:kcc_mobile_app/features/expenses_flow/new_expense/presentation/pages/document_detail_form_page.dart';
import 'package:kcc_mobile_app/features/expenses_flow/new_expense/presentation/widgets/credit_note_form_widget.dart';
import 'package:kcc_mobile_app/features/expenses_flow/new_expense/presentation/widgets/honorary_form_widget.dart';
import 'package:kcc_mobile_app/features/expenses_flow/new_expense/presentation/widgets/invoice_form_widget.dart';
import 'package:kcc_mobile_app/features/expenses_flow/new_expense/presentation/widgets/kilometer_form_widget.dart';
import 'package:kcc_mobile_app/features/expenses_flow/new_expense/presentation/widgets/sub_document_card_widget.dart';
import 'package:kcc_mobile_app/features/expenses_flow/new_expense/presentation/widgets/ticket_form_widget.dart';
import 'package:kcc_mobile_app/features/expenses_flow/new_expense/presentation/widgets/viaticum_form_widget.dart';
import 'package:kcc_mobile_app/shared/presentation/widgets/appbar_widget.dart';
import 'package:kcc_mobile_app/shared/presentation/widgets/drawer_widget.dart';

class SubDocumentSelectorListPage extends StatelessWidget {
  const SubDocumentSelectorListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(),
      drawer: const DrawerWidget(),
      backgroundColor: customBlue,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(30.0),
            child: Text(
              'SELECCIONE TIPO DE DOCUMENTO',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
            ),
          ),
          Center(
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.85,
              child: Column(
                children: const [
                  SubDocumentCardWidget(
                    title: 'BOLETA DE GASTOS Y OTROS',
                    page: DocumentDetailFormPage(
                      form: TicketFormWidget(),
                    ),
                  ),
                  SubDocumentCardWidget(
                    title: 'FACTURA',
                    page: DocumentDetailFormPage(form: InvoiceFormWidget()),
                  ),
                  SubDocumentCardWidget(
                    title: 'NOTA DE CREDITO',
                    page: DocumentDetailFormPage(form: CreditNoteFormWidget()),
                  ),
                  SubDocumentCardWidget(
                    title: 'VIATICOS',
                    page: DocumentDetailFormPage(form: ViaticumFormWidget()),
                  ),
                  SubDocumentCardWidget(
                    title: 'BOLETA DE HONORARIO',
                    page: DocumentDetailFormPage(
                      form: HonoraryTicketFormWidget(),
                    ),
                  ),
                  SubDocumentCardWidget(
                    title: 'KILOMETRAJE',
                    page: DocumentDetailFormPage(form: KilometerFormWidget()),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
