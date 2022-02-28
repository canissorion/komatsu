import 'package:flutter/material.dart';

class HistoryWidget extends StatelessWidget {
  const HistoryWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: const [
                Text(
                  "10.11.2016",
                  style: TextStyle(color: Colors.grey, fontSize: 17),
                ),
                Text(
                  "01:15",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 100,
            child: Stack(
              children: [
                SizedBox(
                  child: Container(
                    height: 25,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        width: 3,
                        color: Colors.green,
                      ),
                    ),
                  ),
                ),
                Center(
                  child: SizedBox(
                    child: Container(
                      width: 3,
                      height: 455,
                      decoration: const BoxDecoration(
                        color: Colors.green,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                SizedBox(
                  width: 150,
                  height: 35,
                  child: Text(
                    "The shipment has been successfully delivered",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                ),
                Text(
                  "Komatsu",
                  style: TextStyle(color: Colors.grey, fontSize: 17),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
