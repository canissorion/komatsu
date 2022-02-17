import 'package:flutter/material.dart';

class TitleAndSelectorWidget extends StatelessWidget {
  const TitleAndSelectorWidget({
    Key? key,
    required this.title,
    required this.items,
  }) : super(key: key);

  final String title;
  final List<String> items;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Colors.grey[800],
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.05,
          child: InputDecorator(
            decoration: InputDecoration(
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
            ),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                itemHeight: 50,
                isDense: true,
                items: items.map((e) {
                  return DropdownMenuItem<String>(child: Text(e));
                }).toList(),
                onChanged: (value) {},
              ),
            ),
          ),
        )
      ],
    );
  }
}
