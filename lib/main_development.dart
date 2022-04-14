import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'features/login_flow/login/presentation/bloc/login_bloc.dart';
import 'features/login_flow/login/presentation/pages/login_page_apart.dart';
import 'injection_container.dart';
import 'injection_container.dart' as di;

Future<void> main() async {
  await di.init();
  await dotenv.load(fileName: '.env.dev');
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (context) => sl<LoginBloc>())],
      child: BlocBuilder<LoginBloc, LoginState>(
        builder: (context, state) {
          return const MaterialApp(
            debugShowCheckedModeBanner: false,
            home: LoginPageApart(flavor: 'Development'),
          );
        },
      ),
    );
  }
}
