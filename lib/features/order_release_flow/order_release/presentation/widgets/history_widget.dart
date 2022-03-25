import 'package:flutter/material.dart';
import 'package:timelines/timelines.dart';

import '../../../../../core/utils/datetime_convert.dart';
import '../../../../../core/utils/komatsu_colors.dart';
import '../../data/models/order_release_resume_list_model.dart';
import '../../domain/entitites/order_release_entitie.dart';

const kTileHeight = 50.0;

class HistoryLiberatorWidget extends StatelessWidget {
  const HistoryLiberatorWidget({Key? key, required this.orderRelease})
      : super(key: key);
  final OrderReleaceResumeList orderRelease;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 1,
      itemBuilder: (context, index) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TimelineTile(
              nodePosition: 0.33,
              oppositeContents: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 13,
                    ),
                    Text(
                      dateTimeConverter(000000),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: 80,
                      height: 30.0,
                      decoration: BoxDecoration(
                        color: customRed500,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Center(
                        child: Text(
                          "Rechazado",
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              contents: Container(
                padding: const EdgeInsets.only(
                    top: 20.0, bottom: 20, right: 10, left: 10),
                child: Card(
                  elevation: 5,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 13.0, bottom: 13, right: 10, left: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Enviado:',
                          style: TextStyle(
                            color: customBlue,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(' '),
                        const Divider(
                          thickness: 2,
                          color: customBlue50,
                        ),
                        _OnTimeBar(user: orderRelease.data![0]),
                      ],
                    ),
                  ),
                ),
              ),
              node: TimelineNode(
                indicator: const DotIndicator(
                  color: customBlue,
                ),
                startConnector: (index != 0)
                    ? const SolidLineConnector(
                        color: customBlue400,
                      )
                    : null,
                endConnector: const SolidLineConnector(
                  color: customBlue400,
                ),
              ),
            )
          ],
        );
      },
    );
  }
}

class _OnTimeBar extends StatelessWidget {
  const _OnTimeBar({Key? key, required this.user}) : super(key: key);

  final Datum user;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 15,
          backgroundColor: customBlue,
          child: Text(user.liberatingUser!),
        ),
        const SizedBox(
          width: 10,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  '00000',
                  textAlign: TextAlign.end,
                  style: const TextStyle(fontSize: 12),
                ),
              ],
            ),
            Text(
              user.liberatingUser!,
              textAlign: TextAlign.end,
              style: const TextStyle(fontSize: 12),
            ),
            Text(
              'falta@algo.cl',
              textAlign: TextAlign.end,
              style: const TextStyle(fontSize: 12),
            ),
          ],
        ),
      ],
    );
  }
}
