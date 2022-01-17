import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kcc_mobile_app/features/detalle_documento/domain/entities/detalle_documento_entitie.dart';
import 'package:kcc_mobile_app/features/detalle_documento/presentation/bloc/detalle_documento_bloc.dart';
import 'package:kcc_mobile_app/injection_container.dart';

import '../../../../core/utils/komatsu_colors.dart';
import '../../../../shared/presentation/widgets/appbar_widget.dart';
import '../../../../shared/presentation/widgets/cabezera_titulo_widget.dart';
import '../../../../shared/presentation/widgets/drawer_widget.dart';
import '../widgets/detalle_concepto_widget.dart';
import '../widgets/detalle_tipo_documento_widget.dart';

class DetalleDocumentoPage extends StatelessWidget {
  const DetalleDocumentoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<DetalleDocumentoBloc>(),
      child: Scaffold(
        backgroundColor: customBlue,
        appBar: AppBarWidget(),
        drawer: const DrawerWidget(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const CabezeraTitulo(),
              BlocBuilder<DetalleDocumentoBloc, DetalleDocumentoState>(
                builder: (context, state) {
                  if (state is Empty) {
                    BlocProvider.of<DetalleDocumentoBloc>(
                      context,
                      listen: false,
                    ).add(GetDetalleDocumentoEvent());
                    return const Center(
                      child: Text('No hay Informacion'),
                    );
                  } else if (state is Error) {
                    return Center(
                      child: Text(state.errorMessage),
                    );
                  } else if (state is Loading) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  } else {
                    return Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          DetalleTipoDocumento(
                            detalleDocumento: state.detalleDocumento!,
                          ),
                          const Divider(
                            height: 40,
                            thickness: 3,
                            color: Colors.white,
                          ),
                          DetallesConcepto(
                            detalleDocumento: state.detalleDocumento!,
                          )
                        ],
                      ),
                    );
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
