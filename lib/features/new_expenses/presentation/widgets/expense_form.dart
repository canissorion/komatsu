// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:kcc_mobile_app/core/utils/komatsu_colors.dart';

class ExpensesForm extends StatelessWidget {
  String dropdownValue = 'Komatsu Cummings Chile Ltda';
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: Column(
        children: [
          UpText(text: "Empresa Rendición:"),
          const SizedBox(
            height: 5,
          ),
          DropDowLlist(dropdownValue: dropdownValue),
          const SizedBox(
            height: 10,
          ),
          UpText(text: "Oficina de Ventas:"),
          const SizedBox(
            height: 5,
          ),
          DropDowLlist(dropdownValue: dropdownValue),
          const SizedBox(
            height: 10,
          ),
          UpText(text: "Moneda:"),
          const SizedBox(
            height: 5,
          ),
          DropDowLlist(dropdownValue: dropdownValue),
          const SizedBox(
            height: 10,
          ),
          UpText(text: "Objetivo del Gasto:"),
          const SizedBox(
            height: 5,
          ),
          const SizedBox(
            width: 340,
            child: TextField(
              keyboardType: TextInputType.text,
              maxLines: 5,
              //autofocus: true,
              textCapitalization: TextCapitalization.sentences,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
                //hintText: 'Ingrese su comentario',
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: customBlue),
                ),
                //filled: true,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class UpText extends StatelessWidget {
  String text;

  UpText({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(
          width: 30,
        ),
        Container(
          alignment: Alignment.centerLeft,
          child: Text(
            text,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}

class DropDowLlist extends StatelessWidget {
  const DropDowLlist({
    Key? key,
    required this.dropdownValue,
  }) : super(key: key);

  final String dropdownValue;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(
          width: 30,
        ),
        SizedBox(
          width: 335,
          height: 30,
          child: DecoratedBox(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black38),
              borderRadius: BorderRadius.circular(5),
            ),
            child: DropdownButton<String>(
              value: dropdownValue,
              icon: const Padding(
                //Icon at tail, arrow bottom is default icon
                padding: EdgeInsets.only(left: 80),
                child: Icon(Icons.arrow_drop_down),
              ),
              elevation: 16,
              //style: const TextStyle(color: Colors.deepPurple),
              underline: Container(
                // height: 2,
                color: Colors.transparent,
              ),
              onChanged: (String? newValue) {
                /*setState(() {
                  dropdownValue = newValue!;
                });*/
              },
              items: <String>[
                'Komatsu Cummings Chile Ltda',
                'Two',
                'Free',
                'Four'
              ].map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 7,
                      ),
                      Text(value),
                    ],
                  ),
                );
              }).toList(),
            ),
          ),
        ),
      ],
    );
  }
}
