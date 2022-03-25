// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kcc_mobile_app/injection_container.dart';

import '../../../../../app.dart';
import '../../../../../core/utils/komatsu_colors.dart';
import '../../../../../core/utils/navigator_utils.dart';
import '../../../../../shared/presentation/widgets/drawer_widget.dart';
import '../bloc/login_bloc.dart';
import '../widgets/login_microsoft_button.dart';

class LoginPageApart extends StatelessWidget {
  const LoginPageApart({Key? key, required this.flavor}) : super(key: key);
  final String flavor;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerWidget(),
      body: Center(
        child: BlocBuilder<LoginBloc, LoginState>(
          builder: (context, state) {
            if (state is Empty) {
              BlocProvider.of<LoginBloc>(
                context,
                listen: false,
              ).add(InitLoginEvent());
              return SizedBox(
                height: MediaQuery.of(context).size.height * 0.75,
                child: const Center(
                  child: Text('No hay Información'),
                ),
              );
            } else if (state is Error) {
              return Center(
                child: Text(state.errorMessage),
              );
            } else if (state is Loading) {
              return SizedBox(
                height: MediaQuery.of(context).size.height * 0.8,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Center(
                      child: CircularProgressIndicator(),
                    ),
                  ],
                ),
              );
            } else if (state is UserSignIn) {
              return CircularProgressIndicator();
            } else {
              const String SCOPE =
                  'api://8dc52a5c-4af1-4e1a-b06a-429233d8d57c/user_impersonation';
              state.msal!.getSignedIn().then((loggedIn) async {
                if (loggedIn) {
                  pushAndReplaceToPage(context, App(flavor: flavor));
                }
              });
              return Column(
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
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        color: customBlue),
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  InkWell(
                    onTap: () async {
                      await state.msal!.signIn('', [SCOPE]).then((value) {
                        if (value!.success!) {
                          pushToPage(context, App(flavor: flavor));
                        }
                      });
                    },
                    child: Ink(
                      child: LoginMicrosoftButton(),
                    ),
                  ),
                ],
              );
            }
          },
        ),
      ),
    );
  }
}
