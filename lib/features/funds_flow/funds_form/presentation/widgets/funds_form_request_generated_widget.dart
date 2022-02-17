import 'package:flutter/material.dart';
import 'package:kcc_mobile_app/core/utils/komatsu_colors.dart';

import '../../../../../app.dart';

class RequestGenerated extends StatelessWidget {
  const RequestGenerated({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Column(
            children: [
              const SizedBox(
                height: 200,
              ),
              const Text(
                "Se ha generado la solicitud",
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                '#1100139',
                style: TextStyle(
                  fontSize: 30,
                  color: customBlue,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 100,
                height: 35,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    textStyle: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                    primary: customBlue,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) {
                          return const App(
                            flavor: '',
                          );
                        },
                      ),
                    );
                  },
                  child: const Text('Cerrar'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
