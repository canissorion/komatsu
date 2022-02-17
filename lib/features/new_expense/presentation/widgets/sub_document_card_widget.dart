import 'package:flutter/material.dart';
import 'package:kcc_mobile_app/core/utils/komatsu_colors.dart';

class SubDocumentCardWidget extends StatelessWidget {
  const SubDocumentCardWidget({
    Key? key,
    required this.title,
    required this.page,
  }) : super(key: key);

  final String title;
  final Widget page;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Ink(
          color: Colors.white,
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return page;
                  },
                ),
              );
            },
            hoverColor: customAccentBlue,
            splashColor: customAccentBlue,
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 8.0, right: 8, top: 15, bottom: 15),
              child: Row(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: const BoxDecoration(
                      color: Colors.grey,
                      shape: BoxShape.circle,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(title)
                ],
              ),
            ),
          ),
        ),
        const Divider(
          thickness: 1,
          height: 1,
          color: Colors.grey,
        ),
      ],
    );
  }
}
