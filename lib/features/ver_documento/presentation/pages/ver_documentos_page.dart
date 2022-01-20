import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

import '../../../../shared/presentation/widgets/appbar_widget.dart';
import '../../../../shared/presentation/widgets/cabezera_titulo_widget.dart';
import '../../../../shared/presentation/widgets/drawer_widget.dart';

class VerDocumentoPage extends StatelessWidget {
  const VerDocumentoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(),
      drawer: const DrawerWidget(),
      body: Column(
        children: [
          const CabezeraTitulo(
            folio: "400088",
          ),
          Expanded(
            child: SfPdfViewer.asset(
              'assets/lorem_ipsum_definicion.pdf',
            ),
          ),
        ],
      ),
    );
  }
}
