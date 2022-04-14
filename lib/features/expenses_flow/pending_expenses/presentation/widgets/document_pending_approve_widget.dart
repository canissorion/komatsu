// ignore_for_file: sort_child_properties_last
import 'package:flutter/material.dart';
import '../../../../../core/utils/datetime_convert.dart';

import '../../domain/entities/pending_expenses_entitie.dart';

class DocumentPendingApprobe extends StatelessWidget {
  const DocumentPendingApprobe({Key? key, required this.data})
      : super(key: key);
  final PendingExpensesEntitie data;

  @override
  Widget build(BuildContext context) {
    return DocumentPendingApprove(data: data);
  }
}

class DocumentPendingApprove extends StatelessWidget {
  const DocumentPendingApprove({
    Key? key,
    required this.data,
  }) : super(key: key);

  final PendingExpensesEntitie data;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          //color: Colors.white,
          margin: const EdgeInsets.only(bottom: 8, left: 5, right: 5),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Circle(item: data),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: Text(
                              "Folio ${data.document.number}",
                              style: const TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                          Text(
                            dateTimeConverter(data.creationDate),
                            style: const TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 5),
                            child: Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.grey,
                              size: 15,
                            ),
                          )
                        ],
                      ),
                      Text(
                        data.document.typeName,
                        style: const TextStyle(
                          fontSize: 15, /*, fontWeight: FontWeight.bold*/
                        ),
                      ),
                      Text(
                        '${data.owner.firstName} ${data.owner.lastName}',
                        style: const TextStyle(fontSize: 15),
                      ),
                      const Text(
                        'CLP: 277.306',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: Text(
                                data.priority,
                                //widget.data.urgency,
                                style: TextStyle(
                                  fontSize: 15,
                                  color: (data.priority == 'Normal')
                                      ? Colors.green
                                      : Colors.red,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Rectangle(item: data),
                          ),
                        ],
                      ),
                    ],
                    crossAxisAlignment: CrossAxisAlignment.start,
                  ),
                ),
              ),
            ],
          ),
        ),
        const Divider(
          height: 2,
          thickness: 2,
        )
      ],
    );
  }
}

class Circle extends StatelessWidget {
  const Circle({Key? key, required this.item}) : super(key: key);
  final PendingExpensesEntitie item;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.only(top: 22),
        width: 10.0,
        height: 10.0,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: item.priority == 'Normal' ? Colors.green : Colors.red,
        ),
      ),
    );
  }
}

class Rectangle extends StatelessWidget {
  const Rectangle({Key? key, required this.item}) : super(key: key);
  final PendingExpensesEntitie item;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: item.generalStaus == 0 ? 50 : 100,
      height: 20.0,
      decoration: BoxDecoration(
        color: item.generalStaus == 0 ? Colors.green : Colors.orange,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Center(
        child: Text(
          item.generalStaus == 0 ? "Nuevo" : "En tratamiento",
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
