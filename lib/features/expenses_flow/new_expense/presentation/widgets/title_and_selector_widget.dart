import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/entities/new_expense_id_domain_parameter_value_entitie.dart';

class TitleAndSelectorWidget extends StatelessWidget {
  const TitleAndSelectorWidget({
    Key? key,
    required this.title,
    required this.items,
    this.titleColor,
    required this.change,
    required this.value,
  }) : super(key: key);

  final String title;
  final List<DomainParameterValueEntitie> items;
  final Color? titleColor;
  final Function change;
  final int? value;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: titleColor ?? Colors.grey[800],
          ),
        ),
        const SizedBox(
          height: 4,
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
          ),
          height: MediaQuery.of(context).size.height * 0.05,
          child: InputDecorator(
            decoration: InputDecoration(
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
            ),
            child: DropdownButtonHideUnderline(
              child: DropdownButton2<int>(
                hint: const Text("Selecione una opción"),
                value: value,
                itemHeight: 40,
                isDense: true,
                isExpanded: true,
                items: items.map((e) {
                  return DropdownMenuItem<int>(
                    value: e.idDomainParameterValue,
                    child: Text(e.descriptionShort),
                  );
                }).toList(),
                onChanged: (newValue) {
                  change(newValue);
                },
                scrollbarAlwaysShow: true,
                dropdownDecoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                ),
                buttonHeight: 40,
                offset: const Offset(0, -15),
                scrollbarRadius: const Radius.circular(40),
                scrollbarThickness: 6,
                dropdownMaxHeight: 200,
              ),
            ),
          ),
        )
      ],
    );
  }
}
