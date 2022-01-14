import 'package:flutter/material.dart';

import '../../../../core/presentation/widgets/appbar_widget.dart';
import '../../../../core/presentation/widgets/cabezera_titulo_widget.dart';
import '../../../../core/presentation/widgets/drawer_widget.dart';
import '../../../../core/utils/komatsu_colors.dart';
import '../../../../shared/presentation/widgets/appbar_widget.dart';
import '../../../../shared/presentation/widgets/drawer_widget.dart';
import '../widgets/detalle_concepto_widget.dart';
import '../widgets/detalle_tipo_documento_widget.dart';

class DetalleDocumentoPage extends StatelessWidget {
  const DetalleDocumentoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: customBlue,
      appBar: AppBarWidget(),
      drawer: const DrawerWidget(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const CabezeraTitulo(),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  DetalleTipoDocumento(),
                  Divider(
                    height: 40,
                    thickness: 3,
                    color: Colors.white,
                  ),
                  DetallesConcepto()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
