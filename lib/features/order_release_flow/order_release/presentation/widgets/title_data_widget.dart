import 'package:flutter/material.dart';

import '../../../../../core/utils/komatsu_colors.dart';

class TitleDataWidget extends StatelessWidget {
  const TitleDataWidget({
    Key? key,
    required this.title,
    required this.info,
  }) : super(key: key);

  final String title;
  final String info;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0, top: 10, bottom: 5, right: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(color: customBlue),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 2.0),
            child: Text(
              info,
              style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
            ),
          )
        ],
      ),
    );
  }
}
