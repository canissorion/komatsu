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
        final datas = _data(data, index);
        return Center(
          child: SizedBox(
            width: 360.0,
            child: Card(
              margin: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: _OrderTitle(
                      orderInfo: data.approvals[index].approval,
                    ),
                  ),
                  const Divider(height: 1.0),
                  _DeliveryProcesses(processes: datas.deliveryProcesses),
                  const Divider(height: 1.0),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: _OnTimeBar(driver: data.approvals[index].approver),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class _OrderTitle extends StatelessWidget {
  const _OrderTitle({
    Key? key,
    required this.orderInfo,
  }) : super(key: key);

  final ApprovalsApprovalHistoryEntitie orderInfo;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Historial ${orderInfo.id}',
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        const Spacer(),
        Text(
          dateTimeConverter(orderInfo.date),
          style: const TextStyle(
            color: Color(0xffb6b2b2),
          ),
        ),
      ],
    );
  }
}

class _InnerTimeline extends StatelessWidget {
  const _InnerTimeline({
    required this.messages,
  });

  final List<_DeliveryMessage> messages;

  @override
  Widget build(BuildContext context) {
    bool isEdgeIndex(int index) {
      return index == 0 || index == messages.length + 1;
    }

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: FixedTimeline.tileBuilder(
        theme: TimelineTheme.of(context).copyWith(
          nodePosition: 0,
          connectorTheme: TimelineTheme.of(context).connectorTheme.copyWith(
                thickness: 1.0,
              ),
          indicatorTheme: TimelineTheme.of(context)
              .indicatorTheme
              .copyWith(size: 10.0, position: 0.5, color: customBlue),
        ),
        builder: TimelineTileBuilder(
          indicatorBuilder: (_, index) =>
              !isEdgeIndex(index) ? Indicator.outlined(borderWidth: 1.0) : null,
          //startConnectorBuilder: (_, index) => Connector.solidLine(),
          //endConnectorBuilder: (_, index) => Connector.solidLine(),
          contentsBuilder: (_, index) {
            if (isEdgeIndex(index)) {
              return null;
            }

            return Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(messages[index - 1].toString()),
            );
          },
          itemExtentBuilder: (_, index) => isEdgeIndex(index) ? 10.0 : 30.0,
          nodeItemOverlapBuilder: (_, index) =>
              isEdgeIndex(index) ? true : null,
          itemCount: messages.length + 2,
        ),
      ),
    );
  }
}

class _DeliveryProcesses extends StatelessWidget {
  const _DeliveryProcesses({Key? key, required this.processes})
      : super(key: key);

  final List<_DeliveryProcess> processes;
  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: const TextStyle(
        color: Color(0xff9b9b9b),
        fontSize: 12.5,
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: FixedTimeline.tileBuilder(
          theme: TimelineThemeData(
            nodePosition: 0,
            color: const Color(0xff989898),
            indicatorTheme: const IndicatorThemeData(
              position: 0,
              size: 20.0,
            ),
            connectorTheme: const ConnectorThemeData(
              thickness: 2.5,
            ),
          ),
          builder: TimelineTileBuilder.connected(
            connectionDirection: ConnectionDirection.before,
            itemCount: processes.length,
            contentsBuilder: (_, index) {
              if (processes[index].isCompleted) return null;

              return Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      processes[index].name,
                      style: DefaultTextStyle.of(context).style.copyWith(
                            fontSize: 18.0,
                          ),
                    ),
                    _InnerTimeline(messages: processes[index].messages),
                  ],
                ),
              );
            },
            indicatorBuilder: (_, index) {
              if (processes[index].isCompleted) {
                return const DotIndicator(
                  color: customBlue,
                  /*child: Icon(
                    Icons.check,
                    color: Colors.white,
                    size: 12.0,
                  ),*/
                );
              } else {
                return const DotIndicator(
                  color: customBlue,
                  /*child: Icon(
                    Icons.check,
                    color: Colors.white,
                    size: 12.0,
                  ),*/
                );
              }
            },
            connectorBuilder: (_, index, ___) => SolidLineConnector(
              color: processes[index].isCompleted ? customBlue : null,
            ),
          ),
        ),
      ),
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
        Container(
          width: 80,
          height: 30.0,
          decoration: BoxDecoration(
            color: driver.action == 'rechazado' ? Colors.red : Colors.green,
            borderRadius: BorderRadius.circular(25),
          ),
          child: Center(
            child: Text(
              driver.action == 'rechazado' ? "Rechazado" : "Aprobado",
              style: const TextStyle(color: Colors.white, fontSize: 13),
            ),
          ),
        ),
        const SizedBox(width: 24.0),
        Center(
          child: Column(
            children: [
              Row(
                children: const [
                  SizedBox(width: 45.0),
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
        ),
        const SizedBox(width: 12.0),
        CircleAvatar(
          backgroundColor: customBlue,
          child: Text(driver.firstName.characters.first),
        )
      ],
    );
  }
}

_OrderInfo _data(ApprovalDataEntitie data, int index) => _OrderInfo(
      deliveryProcesses: [
        _DeliveryProcess(
          data.approvals[index].statusInTheFlow,
          messages: [
            _DeliveryMessage(data.approvals[index].approver.comments),
          ],
        ),
        const _DeliveryProcess.complete(),
      ],
    );

class _OrderInfo {
  const _OrderInfo({
    required this.deliveryProcesses,
  });

  final List<_DeliveryProcess> deliveryProcesses;
}

class _DriverInfo {
  const _DriverInfo({
    required this.name,
    required this.thumbnailUrl,
  });

  final String name;
  final String thumbnailUrl;
}

class _DeliveryProcess {
  const _DeliveryProcess(
    this.name, {
    this.messages = const [],
  });

  const _DeliveryProcess.complete()
      : this.name = 'aprobado',
        this.messages = const [];

  final String name;
  final List<_DeliveryMessage> messages;

  bool get isCompleted => name == 'aprobado';
}

class _DeliveryMessage {
  const _DeliveryMessage(this.message);

  // final DateTime createdAt;
  final String message;

  @override
  String toString() {
    return 'Comentario: $message';
  }
}
