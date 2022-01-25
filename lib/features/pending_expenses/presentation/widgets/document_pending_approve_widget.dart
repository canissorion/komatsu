// ignore_for_file: sort_child_properties_last
import 'package:flutter/material.dart';
import '../../domain/entities/pending_document_detail_entitie.dart';

class Item extends StatefulWidget {
  const Item({Key? key, required this.data}) : super(key: key);
  final PendingDocumentDetailEntitie data;

  @override
  State<Item> createState() => _ItemState();
}

class Circle extends StatelessWidget {
  const Circle({Key? key, required this.item}) : super(key: key);
  final PendingDocumentDetailEntitie item;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.only(top: 22),
        width: 10.0,
        height: 10.0,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: item.urgency ? Colors.green : Colors.red,
        ),
      ),
    );
  }
}

class Rectangle extends StatelessWidget {
  const Rectangle({Key? key, required this.item}) : super(key: key);
  final PendingDocumentDetailEntitie item;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: item.state ? 50 : 100,
      height: 20.0,
      decoration: BoxDecoration(
        color: item.state ? Colors.green : Colors.orange,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Center(
        child: Text(
          item.state ? "Nuevo" : "En tratamiento",
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}

class NotTime extends StatelessWidget {
  const NotTime({
    Key? key,
    required this.time,
  }) : super(key: key);

  final DateTime time;

  @override
  Widget build(BuildContext context) {
    return Text(
      "${time.day}-${time.month}-${time.year}",
      style: const TextStyle(
        fontSize: 14,
        color: Colors.grey,
      ),
    );
  }
}

class _ItemState extends State<Item> {
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
              Circle(item: widget.data),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: Text(
                              "Folio ${widget.data.invoice}",
                              style: const TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                          NotTime(time: widget.data.date),
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
                        widget.data.type,
                        style: const TextStyle(
                          fontSize: 15, /*, fontWeight: FontWeight.bold*/
                        ),
                      ),
                      Text(
                        widget.data.name,
                        style: const TextStyle(fontSize: 15),
                      ),
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: Text(
                                (widget.data.urgency) ? "Normal" : "Urgente",
                                //widget.data.urgency,
                                style: TextStyle(
                                  fontSize: 15,
                                  color: (widget.data.urgency)
                                      ? Colors.green
                                      : Colors.red,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Rectangle(item: widget.data),
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
