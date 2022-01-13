import 'package:flutter/material.dart';
import 'package:kcc_mobile_app/core/utils/komatsu_colors.dart';
import 'package:kcc_mobile_app/features/detalle_documento/presentation/widgets/detalle_individual_widget.dart';
import 'package:kcc_mobile_app/features/detalle_documento/presentation/widgets/detalle_tipo_documento_widget.dart';
import '../../../../core/presentation/widgets/appbar_widget.dart';
import '../../../../core/presentation/widgets/drawer_widget.dart';

import '../widgets/cabezera_titulo_widget.dart';

class DetalleDocumentoPage extends StatelessWidget {
  const DetalleDocumentoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(),
      drawer: const DrawerWidget(),
      body: Column(
        children: [
          const CabezeraTitulo(),
          Expanded(
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(color: customBlue),
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  children: const [
                    DetalleTipoDocumento(),
                    Divider(
                      height: 40,
                      thickness: 3,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
