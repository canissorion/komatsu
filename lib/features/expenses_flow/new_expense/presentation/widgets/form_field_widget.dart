import 'package:flutter/material.dart';

class FormFieldWidget extends StatelessWidget {
  const FormFieldWidget(
      {Key? key, required this.title, this.textLines, this.keyboard})
      : super(key: key);

  final String title;
  final int? textLines;
  final TextInputType? keyboard;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
              color: Colors.white, fontWeight: FontWeight.w500, fontSize: 15),
        ),
        const SizedBox(
          height: 4,
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
          ),
          height: 35,
          width: MediaQuery.of(context).size.width * 0.85,
          child: TextField(
            minLines: textLines ?? 1,
            maxLines: null,
            keyboardType: keyboard,
          ),
        ),
        const SizedBox(
          height: 15,
        ),
      ],
    );
  }
}
