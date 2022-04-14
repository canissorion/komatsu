import 'package:flutter/material.dart';
import '../../data/models/order_release_resume_list_model.dart';

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
        child: SizedBox(
          height: MediaQuery.of(context).size.height * 0.06,
          width: MediaQuery.of(context).size.width * 0.34,
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
