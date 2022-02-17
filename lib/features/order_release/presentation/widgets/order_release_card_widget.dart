import 'package:flutter/material.dart';

class OrderReleaseCardWidget extends StatelessWidget {
  const OrderReleaseCardWidget({
    Key? key,
  }) : super(key: key);

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
                      'Folio #4000088',
                      style: TextStyle(
                        color: Colors.grey[700],
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    const Text(
                      'Liberacion de OC - Proveedor',
                      style: TextStyle(fontSize: 17),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    const Text(
                      'Acepta.COM SA',
                      style: TextStyle(fontSize: 17),
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
                    children: const [
                      Text('Hoy'),
                      Icon(
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
                            left: 7.0, right: 7, bottom: 4, top: 4),
                        child: Text(
                          'Nuevo',
                          style: TextStyle(color: Colors.white),
                        ),
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
