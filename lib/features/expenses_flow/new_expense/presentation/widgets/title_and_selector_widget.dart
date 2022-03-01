import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kcc_mobile_app/features/expenses_flow/new_expense/presentation/bloc/new_expense_bloc.dart';

class TitleAndSelectorWidget extends StatelessWidget {
  const TitleAndSelectorWidget({
    Key? key,
    required this.title,
    required this.items,
    this.titleColor,
  }) : super(key: key);

  final String title;
  final List<String> items;
  final Color? titleColor;

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
              child: DropdownButton2<String>(
                hint: const Text("Selecione una opción"),
                itemHeight: 40,
                isDense: true,
                isExpanded: true,
                items: items.map((e) {
                  return DropdownMenuItem<String>(
                    value: e,
                    child: Text(e),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  BlocProvider.of<NewExpenseBloc>(
                    context,
                    listen: false,
                  ).add(
                    ChangeSelectFieldData(newValue!),
                  );
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
