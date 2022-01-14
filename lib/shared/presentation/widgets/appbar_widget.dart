import 'package:flutter/material.dart';
import '../../../core/utils/komatsu_colors.dart';

class AppBarWidget extends PreferredSize {
  AppBarWidget({Key? key})
      : super(
          key: key,
          preferredSize: const Size.fromHeight(60),
          child: AppBar(
            backgroundColor: Colors.white,
            centerTitle: true,
            title: const Text(
              'Moisés Bravo',
              style: TextStyle(color: customBlue),
            ),
            iconTheme: const IconThemeData(color: customBlue),
          ),
        );
}
