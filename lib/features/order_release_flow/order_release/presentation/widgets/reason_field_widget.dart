import 'package:flutter/material.dart';
import '../../../../../core/utils/komatsu_colors.dart';

class ReasonFieldWidget extends StatelessWidget {
  const ReasonFieldWidget({Key? key, required this.title, this.textLines})
      : super(key: key);

  final String title;
  final int? textLines;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(color: customBlue, fontSize: 15),
        ),
        const SizedBox(
          height: 4,
        ),
        Container(
          decoration: BoxDecoration(
              color: Colors.white, border: Border.all(color: Colors.black)),
          height: 80,
          width: MediaQuery.of(context).size.width * 0.9,
          child: TextField(
            minLines: textLines ?? 1,
            maxLines: null,
          ),
        ),
        const SizedBox(
          height: 15,
        ),
      ],
    );
  }
}
