import 'package:flutter/material.dart';
import '../../../../../core/utils/datetime_convert.dart';
import '../../data/models/order_release_resume_list_model.dart';

class OrderReleaseCardWidget extends StatelessWidget {
  const OrderReleaseCardWidget({Key? key, required this.data})
      : super(key: key);

  final Datum data;
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
                      'Folio ${data.orderNumber}',
                      style: TextStyle(
                        color: Colors.grey[700],
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      data.providerId!,
                      style: const TextStyle(fontSize: 17),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      data.providerName!,
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
                        dateTimeConverter(data.recordDate!),
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
                    child: const Center(
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 7.0,
                          right: 7,
                          bottom: 4,
                          top: 4,
                        ),
                        child: Rectangle(),
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
  const Rectangle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 20.0,
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(4),
      ),
      child: const Center(
        child: Text(
          "Nuevo",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
