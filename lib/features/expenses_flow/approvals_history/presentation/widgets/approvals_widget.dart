// ignore_for_file: noop_primitive_operations

import 'package:flutter/material.dart';
import 'package:timelines/timelines.dart';

import '../../../../../core/utils/datetime_convert.dart';
import '../../../../../core/utils/komatsu_colors.dart';
import '../../domain/entities/approval_data_entitie.dart';
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
                    const SizedBox(
                      height: 13,
                    ),
                    Text(
                      dateTimeConverter(data.approvals[index].approval.date),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: 120,
                      height: 50.0,
                      decoration: BoxDecoration(
                        color:
                            data.approvals[index].approver.action == 'devuelto'
                                ? Colors.red
                                : Colors.green,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(
                        child: Text(
                          data.approvals[index].statusInTheFlow.toString(),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize:
                                (data.approvals[index].statusInTheFlow.length <
                                        9)
                                    ? 14
                                    : 12,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              contents: Container(
                padding: const EdgeInsets.only(
                  top: 20.0,
                  bottom: 20,
                  right: 10,
                  left: 10,
                ),
                child: Card(
                  elevation: 5,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 13.0,
                      bottom: 13,
                      right: 10,
                      left: 10,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
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
                        _OnTimeBar(user: data.approvals[index].approver),
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

  final ApproverHistoryEntitie user;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 15,
          backgroundColor: customBlue,
          child: Text(user.firstName.characters.first),
        ),
        const SizedBox(
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
              '${user.firstName} ${user.lastName}',
              textAlign: TextAlign.end,
              style: const TextStyle(fontSize: 12),
            ),
          ],
        ),
      ],
    );
  }
}
