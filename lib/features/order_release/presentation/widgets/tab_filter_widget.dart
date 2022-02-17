import 'package:flutter/material.dart';
import 'package:kcc_mobile_app/core/utils/komatsu_colors.dart';

class TabFilterWidget extends StatelessWidget {
  const TabFilterWidget({Key? key, required this.text, required this.isActive})
      : super(key: key);

  final String text;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    const Radius radius = Radius.circular(4);
    return GestureDetector(
      child: Container(
        width: MediaQuery.of(context).size.width * 0.46,
        decoration: BoxDecoration(
          border: Border.all(width: 1.3, color: customAccentBlue),
          color: isActive == true ? customAccentBlue : Colors.grey[300],
          borderRadius: isActive == true
              ? const BorderRadius.only(
                  topLeft: radius,
                  bottomLeft: radius,
                )
              : const BorderRadius.only(
                  topRight: radius,
                  bottomRight: radius,
                ),
        ),
        child: Center(
          child: Padding(
            padding:
                const EdgeInsets.only(top: 8, bottom: 8, right: 30, left: 30),
            child: Text(
              text,
              style: TextStyle(
                color: isActive == true ? Colors.white : customAccentBlue,
                fontWeight: FontWeight.w400,
                fontSize: 16,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
