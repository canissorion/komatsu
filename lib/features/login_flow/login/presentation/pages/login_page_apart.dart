import 'package:flutter/material.dart';

import '../../../../../app.dart';
import '../../../../../core/utils/komatsu_colors.dart';
import '../../../../../shared/presentation/widgets/drawer_widget.dart';
import '../widgets/login_microsoft_button.dart';

class LoginPageApart extends StatelessWidget {
  const LoginPageApart({Key? key, required this.flavor}) : super(key: key);
  final String flavor;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerWidget(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 300,
              child: Image.asset('assets/img/Komatsu-Logo.png'),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'RHPAM',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.w500, fontSize: 20, color: customBlue),
            ),
            const SizedBox(
              height: 60,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return App(flavor: flavor);
                    },
                  ),
                );
              },
              child: Ink(
                child: LoginMicrosoftButton(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
