import 'package:flutter/material.dart';

import '../../../core/utils/komatsu_colors.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(canvasColor: customBlue),
      child: Container(),
    );
  }
}
