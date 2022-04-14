// ignore_for_file: prefer_final_locals, constant_identifier_names

import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:msal_mobile/msal_mobile.dart';

import '../../data/models/user_mode.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(Empty()) {
    const String TENANT_ID = 'organizations';
    String authority = "https://login.microsoftonline.com/$TENANT_ID";

    on<InitLoginEvent>((event, emit) async {
      emit(Loading());
      await MsalMobile.create('assets/json/auth_config.json', authority)
          .then((client) => emit(Loaded(msal: client, isSignedIn: false)));
    });

    on<UserLoged>((event, emit) async {
      await state.msal!.getAccount().then((value) {
        emit(
          UserSignIn(
            msal: state.msal!,
            isSignedIn: true,
            user: userDataFromJson(jsonEncode(value!.currentAccount!.claims)),
          ),
        );
      });
    });
  }
}
