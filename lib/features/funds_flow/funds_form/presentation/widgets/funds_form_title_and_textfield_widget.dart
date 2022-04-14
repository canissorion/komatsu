import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';
import 'package:flutter/material.dart';

class TitleAndTextfieldWidget extends StatelessWidget {
  const TitleAndTextfieldWidget({
    Key? key,
    required this.title,
    this.titleColor,
  }) : super(key: key);

  final String title;
  final Color? titleColor;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 15,
            //fontWeight: FontWeight.w500,
            color: titleColor ?? Colors.grey[800],
          ),
        ),
        const SizedBox(
          height: 4,
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(5),
          ),
          height: MediaQuery.of(context).size.height * 0.05,
          child: TextField(
            inputFormatters: [CurrencyTextInputFormatter()],
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              hintText: "\$88888888",
            ),
          ),
        ),
      ],
    );
  }
}
