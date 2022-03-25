import 'package:flutter/material.dart';
import '../../../../../core/utils/komatsu_colors.dart';
import '../../data/models/order_release_resume_list_model.dart';
import '../../domain/entitites/order_release_entitie.dart';

class ReleasebuttonWidget extends StatelessWidget {
  const ReleasebuttonWidget({Key? key, required this.orderRelease})
      : super(key: key);

  final OrderReleaceResumeList orderRelease;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        elevation: 5,
        color: const Color(0xffcccccc),
        child: Container(
          height: MediaQuery.of(context).size.height * 0.06,
          width: MediaQuery.of(context).size.width * 0.34,
          /*decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            //color: Color.fromARGB(255, 221, 219, 219),
            boxShadow: const <BoxShadow>[
              BoxShadow(
                color: Colors.black26,
                blurRadius: 35.0,
                offset: Offset(0.0, 0.9),
              )
            ],
          ),*/
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
                        color: Colors.black,
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(
                      width: 60,
                    ),
                    Icon(
                      Icons.remove_red_eye,
                      color: Colors.black,
                      size: 20,
                    )
                  ],
                ),
                const Text(
                  '4506275811',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
