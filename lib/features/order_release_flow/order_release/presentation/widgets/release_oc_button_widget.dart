import 'package:flutter/material.dart';
import '../../../../../core/utils/komatsu_colors.dart';
import '../../domain/entitites/order_release_entitie.dart';

class ReleasebuttonWidget extends StatelessWidget {
  const ReleasebuttonWidget({Key? key, required this.orderRelease})
      : super(key: key);

  final OrderReleaseEntitie orderRelease;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: MediaQuery.of(context).size.height * 0.06,
        width: MediaQuery.of(context).size.width * 0.34,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: customBlue400,
          boxShadow: const <BoxShadow>[
            BoxShadow(
              color: Colors.black26,
              blurRadius: 10.0,
              offset: Offset(0.0, 0.75),
            )
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            left: 10.0,
            right: 10,
            top: 6,
            bottom: 6,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'PDF',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(
                    width: 60,
                  ),
                  Icon(
                    Icons.remove_red_eye,
                    color: Colors.white,
                    size: 20,
                  )
                ],
              ),
              const Text(
                '4506275811',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
