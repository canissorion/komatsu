import 'package:flutter/material.dart';
import 'package:pdf_render/pdf_render_widgets.dart';

import '../../../../core/presentation/widgets/appbar_widget.dart';
import '../../../../core/presentation/widgets/cabezera_titulo_widget.dart';
import '../../../../core/presentation/widgets/drawer_widget.dart';
import '../../../../shared/presentation/widgets/appbar_widget.dart';
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
          const CabezeraTitulo(),
          Expanded(
            child: PdfViewer.openAsset('assets/lorem_ipsum_definicion.pdf'),
          ),
        ],
      ),
    );
  }
}
