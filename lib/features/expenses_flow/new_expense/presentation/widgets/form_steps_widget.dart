import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

import '../../../../../core/utils/komatsu_colors.dart';
import '../bloc/step_wizard_bloc/step_wizard_bloc.dart';

class FormStepWidget extends StatelessWidget {
  const FormStepWidget({Key? key, required this.pagePosition})
      : super(key: key);

  final int pagePosition;

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
            if (pagePosition > 1)
              GestureDetector(
                onTap: () {
                  if (pagePosition > 1) {
                    BlocProvider.of<StepWizardBloc>(
                      context,
                      listen: false,
                    ).add(const ChangePreviousPageStepEvent());
                    DefaultTabController.of(context)!
                        .animateTo(pagePosition - 2);
                  }
                },
                child: Row(
                  children: const [
                    Icon(Icons.arrow_back_ios, color: customAccentBlue),
                    Text(
                      'Atras',
                      style: TextStyle(color: customAccentBlue),
                    ),
                  ],
                ),
              ),
            const SizedBox(
              width: 20,
            ),
            Center(
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.46,
                child: StepProgressIndicator(
                  size: 6,
                  roundedEdges: Radius.circular(10),
                  totalSteps: 3,
                  currentStep: pagePosition,
                  selectedColor: customBlue,
                ),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            GestureDetector(
              onTap: () {
                if (pagePosition < 3) {
                  DefaultTabController.of(context)!.animateTo(pagePosition);
                  BlocProvider.of<StepWizardBloc>(
                    context,
                    listen: false,
                  ).add(const ChangeNextPageStepEvent());
                }
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
