import 'package:flutter/material.dart';
import 'subdocument_alert_page.dart';

class DocumentSelectedListPage extends StatelessWidget {
  const DocumentSelectedListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Documentos',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.grey[800],
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const SubDocumentAlertPage();
                    },
                  ),
                );
              },
              child: const Text('AGREGAR +'),
            )
          ],
        ),
      ),
    );
  }
}
