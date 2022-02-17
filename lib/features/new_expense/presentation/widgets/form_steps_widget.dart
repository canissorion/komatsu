import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

import '../../../../core/utils/komatsu_colors.dart';

class FormStepWidget extends StatelessWidget {
  const FormStepWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 10,
        ),
        const Text(
          'Nueva Rendición',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w500,
            fontSize: 17,
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Center(
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.46,
                child: const StepProgressIndicator(
                  size: 12,
                  roundedEdges: Radius.circular(10),
                  totalSteps: 10,
                  currentStep: 1,
                  selectedColor: customBlue,
                ),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            GestureDetector(
              onTap: () {
                DefaultTabController.of(context)!.animateTo(1);
              },
              child: Row(
                children: const [
                  Text(
                    'Siguiente',
                    style: TextStyle(color: customAccentBlue),
                  ),
                  Icon(Icons.arrow_forward_ios, color: customAccentBlue)
                ],
              ),
            ),
            const SizedBox(
              width: 5,
            ),
          ],
        )
      ],
    );
  }
}
