import 'package:flutter/material.dart';
import '../../../../../core/utils/komatsu_colors.dart';
import '../pages/release_oc_detail_page.dart';

class ReleaseAttachmentWidget extends StatelessWidget {
  const ReleaseAttachmentWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.2,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: customBlue,
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          TitleDataBlueWidget(
                            title: 'Cod Interno',
                            data: 'EXT47000000151066',
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Nombre documento',
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                          Text(
                            'S00026_20220127144818.686_X',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          )
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Column(
                            children: const [
                              Icon(
                                Icons.download,
                                color: Colors.white,
                                size: 35,
                              ),
                              Text(
                                'Descarga',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 13,
                                ),
                              ),
                              Icon(
                                Icons.public,
                                color: Colors.white,
                                size: 35,
                              ),
                              Text(
                                'URL',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 13,
                                ),
                              )
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                  const Divider(
                    thickness: 2,
                    color: Colors.white,
                    endIndent: 100,
                  )
                ],
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        )
      ],
    );
  }
}
