import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kcc_mobile_app/features/detalle_rendicion/domain/entities/detalle_rendicion_entitie.dart';

import '../../../../core/utils/komatsu_colors.dart';

import '../bloc/detalle_rendicion_bloc.dart';
import '../pages/detalle_rendicion_final.dart';

class CierreTareaWidget extends StatelessWidget {
  const CierreTareaWidget({
    Key? key,
    required this.detalleRendicion,
    required this.checked,
  }) : super(key: key);
  final DetalleRendicionEntitie detalleRendicion;
  final bool checked;
  @override
  Widget build(BuildContext context) {
    const maxLines = 5;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Cierre de tarea",
          textAlign: TextAlign.left,
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          //width: 40,
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.all(13.0),
          child: Column(
            children: [
              Container(
                alignment: Alignment.centerLeft,
                child: const Text(
                  "Comentario de Aprobador",
                  style: TextStyle(color: customBlue, fontSize: 15),
                ),
              ),
              const SizedBox(
                //width: 40,
                height: 10,
              ),
              const SizedBox(
                height: 24.0 * maxLines,
                child: TextField(
                  maxLines: maxLines,
                  //autofocus: true,
                  textCapitalization: TextCapitalization.sentences,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                    hintText: 'Ingrese su comentario',
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: customBlue),
                    ),
                    //filled: true,
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          //width: 40,
          height: 20,
        ),
        Row(
          children: [
            Transform.scale(
              scale: 1.3,
              child: Checkbox(
                value: checked,
                onChanged: (_) {
                  BlocProvider.of<DetalleRendicionBloc>(
                    context,
                    listen: false,
                  ).add(MarkEvent());
                },
                side: const BorderSide(color: Colors.grey),
                checkColor: Colors.white,
                //hoverColor: Colors.white,
                activeColor: customBlue,
              ),
            ),
            Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Text(
                    "Declaro conocer la pólitica de Rendiciones\nde Gastos y Viajes",
                    style: TextStyle(color: customBlue, fontSize: 15),
                  ),
                ),
                InkWell(
                  child: const Text(
                    "Ver política, manuales y procedimientos",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: customBlue,
                      fontSize: 15,
                    ),
                  ),
                  onTap: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Ver politica'),
                        duration: Duration(seconds: 1),
                      ),
                    );
                  },
                )
              ],
            )
          ],
        ),
        Container(
          margin: const EdgeInsets.all(15),
          child: Row(
            children: [
              const SizedBox(
                //height: 30,
                width: 45,
              ),
              SizedBox(
                width: 100,
                height: 35,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    textStyle: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                    primary: Colors.green,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) {
                          return const DetalleRendicionFinalPage();
                        },
                      ),
                    );
                  },
                  child: const Text('Aprobar'),
                ),
              ),
              const SizedBox(
                height: 60,
                width: 30,
              ),
              SizedBox(
                width: 100,
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
                  child: const Text('Rechazar'),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
