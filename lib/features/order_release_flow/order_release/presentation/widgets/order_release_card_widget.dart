import 'package:flutter/material.dart';
import '../../../../../core/utils/datetime_convert.dart';
import '../../domain/entitites/order_release_entitie.dart';

class OrderReleaseCardWidget extends StatelessWidget {
  const OrderReleaseCardWidget({Key? key, required this.data})
      : super(key: key);

  final OrderReleaseEntitie data;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.16,
          child: Row(
            children: [
              Checkbox(value: false, onChanged: (onchange) {}),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 24,
                    ),
                    Text(
                      'Folio ${data.resumeCard.number}',
                      style: TextStyle(
                        color: Colors.grey[700],
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      data.provider.typeProvider,
                      style: const TextStyle(fontSize: 17),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      data.provider.providerName,
                      style: const TextStyle(fontSize: 17),
                    )
                  ],
                ),
              ),
              Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Text(
                        dateTimeConverter(data.creationDate),
                        style:
                            const TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                      const Icon(
                        Icons.arrow_forward_ios,
                        size: 13,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 45,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(3),
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 7.0,
                          right: 7,
                          bottom: 4,
                          top: 4,
                        ),
                        child: Rectangle(item: data),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                ],
              ),
              const SizedBox(
                width: 15,
              )
            ],
          ),
        ),
        const Divider(
          thickness: 3,
          indent: 48,
        )
      ],
    );
  }
}

class Rectangle extends StatelessWidget {
  const Rectangle({Key? key, required this.item}) : super(key: key);
  final OrderReleaseEntitie item;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: item.generalStatus == 0 ? 50 : 100,
      height: 20.0,
      decoration: BoxDecoration(
        color: item.generalStatus == 0 ? Colors.green : Colors.orange,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Center(
        child: Text(
          item.generalStatus == 0 ? "Nuevo" : "En tratamiento",
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
