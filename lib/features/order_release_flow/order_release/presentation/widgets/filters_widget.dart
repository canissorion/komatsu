import 'package:flutter/material.dart';
import 'tab_filter_widget.dart';

class FiltersWidget extends StatelessWidget {
  const FiltersWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            TabFilterWidget(text: 'Pendientes', isActive: true),
            TabFilterWidget(text: 'Realizadas', isActive: false),
          ],
        ),
        const SizedBox(
          height: 12,
        ),
      ],
    );
  }
}
