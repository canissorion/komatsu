import 'package:flutter/material.dart';

class AttachmentButtonWidget extends StatelessWidget {
  const AttachmentButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: 130,
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: Row(
          children: const [
            Icon(
              Icons.indeterminate_check_box_sharp,
              color: Colors.white,
              size: 15,
            ),
            Spacer(),
            Text(
              "VER ADJUNTO",
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
            //Spacer(),
          ],
        ),
      ),
    );
  }
}
