import 'package:flutter/material.dart';

import '../../../../../app.dart';
import '../../../../../core/utils/komatsu_colors.dart';
import '../../../../../core/utils/navigator_utils.dart';
import '../../data/models/order_release_resume_list_model.dart';

class ReleaseOcHeaderWidget extends StatelessWidget {
  const ReleaseOcHeaderWidget({Key? key, required this.data}) : super(key: key);
  final OrderReleaceResumeList data;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.10,
      child: Row(
        children: [
          const SizedBox(
            width: 15,
          ),
          Row(
            children: [
              GestureDetector(
                onTap: () {},
                child: Row(
                  children: const [
                    Icon(
                      Icons.arrow_back_ios,
                      color: customAccentBlue,
                      size: 17,
                    ),
                    Text(
                      'Atras',
                      style: TextStyle(color: customAccentBlue),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Liberacion OC',
                  style: TextStyle(
                    color: customBlue,
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
                ),
                Text(
                  data.data![0].orderNumber!,
                  style: const TextStyle(
                    color: customBlue,
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
                )
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              pushAndReplaceToPage(context, const App(flavor: 'Development'));
            },
            child: const Text(
              'Cerrar',
              style: TextStyle(color: customAccentBlue),
            ),
          ),
          const SizedBox(
            width: 15,
          ),
        ],
      ),
    );
  }
}
