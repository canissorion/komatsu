import 'package:flutter/material.dart';
import 'package:kcc_mobile_app/core/utils/datetime_convert.dart';
import 'package:kcc_mobile_app/core/utils/komatsu_colors.dart';
import 'package:timelines/timelines.dart';

import '../../domain/entities/approval_data_entitie.dart';
import '../../domain/entities/approvals_approval_history_entitie.dart';
import '../../domain/entities/approver_entitie.dart';

const kTileHeight = 50.0;

class ApprovalsHistory extends StatelessWidget {
  const ApprovalsHistory({Key? key, required this.data}) : super(key: key);
  final ApprovalDataEntitie data;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: data.approvals.length,
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
                    SizedBox(
                      height: 13,
                    ),
                    Text(
                      dateTimeConverter(data.approvals[index].approval.date),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: 80,
                      height: 30.0,
                      decoration: BoxDecoration(
                        color:
                            data.approvals[index].approver.action == 'rechazado'
                                ? Colors.red
                                : Colors.green,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Center(
                        child: Text(
                          data.approvals[index].approver.action == 'rechazado'
                              ? "Rechazado"
                              : "Aprobado",
                          style: const TextStyle(
                              color: Colors.white, fontSize: 13),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              contents: Container(
                padding:
                    EdgeInsets.only(top: 20.0, bottom: 20, right: 10, left: 10),
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
                          'Estado:',
                          style: TextStyle(
                            color: customBlue,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(data.approvals[index].statusInTheFlow),
                        const Divider(
                          thickness: 2,
                          endIndent: 100,
                        ),
                        const Text(
                          'Comentario:',
                          style: TextStyle(
                            color: customBlue,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(data.approvals[index].approver.comments),
                        const Divider(
                          thickness: 2,
                          color: customBlue50,
                        ),
                        _OnTimeBar(driver: data.approvals[index].approver),
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
  const _OnTimeBar({Key? key, required this.driver}) : super(key: key);

  final ApproverHistoryEntitie driver;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 15,
          backgroundColor: customBlue,
          child: Text(driver.firstName.characters.first),
        ),
        SizedBox(
          width: 10,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: const [
                Text(
                  'Responsable',
                  textAlign: TextAlign.end,
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Text(
              '${driver.firstName} ${driver.lastName}',
              textAlign: TextAlign.end,
              style: const TextStyle(fontSize: 12),
            ),
          ],
        ),
      ],
    );
  }
}
