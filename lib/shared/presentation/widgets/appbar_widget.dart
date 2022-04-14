// ignore_for_file: lines_longer_than_80_chars

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/utils/komatsu_colors.dart';
import '../../../features/login_flow/login/presentation/bloc/login_bloc.dart';

class AppBarWidget extends PreferredSize {
  AppBarWidget({Key? key})
      : super(
          key: key,
          preferredSize: const Size.fromHeight(60),
          child: BlocBuilder<LoginBloc, LoginState>(
            builder: (context, state) {
              if (state is UserSignIn) {
                return AppBar(
                  backgroundColor: Colors.white,
                  centerTitle: true,
                  title: Text(
                    '${state.user.name!.split(' ')[0]} ${state.user.name!.split(' ')[2]}',
                    style: const TextStyle(color: customBlue),
                  ),
                  iconTheme: const IconThemeData(color: customBlue),
                );
              } else {
                BlocProvider.of<LoginBloc>(
                  context,
                  listen: false,
                ).add(UserLoged());
                return const CircularProgressIndicator();
              }
            },
          ),
        );
}
