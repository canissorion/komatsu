import 'package:flutter/material.dart';

class RectangleWidget extends StatelessWidget {
  const RectangleWidget({Key? key, required this.status}) : super(key: key);
  final int status;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: status == 0 ? 50 : 100,
      height: 20.0,
      decoration: BoxDecoration(
        color: status == 0 ? Colors.green : Colors.orange,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Center(
        child: Text(
          status == 0 ? "Nuevo" : "En tratamiento",
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}

class RectangleDetails extends StatelessWidget {
  const RectangleDetails({
    Key? key,
    required this.status,
  }) : super(key: key);

  final int status;

  @override
  Widget build(BuildContext context) {
    return RectangleWidget(status: status);
  }
}
