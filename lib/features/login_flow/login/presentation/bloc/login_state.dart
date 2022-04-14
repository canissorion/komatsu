// ignore_for_file: annotate_overrides, overridden_fields

part of 'login_bloc.dart';

abstract class LoginState extends Equatable {
  final MsalMobile? msal;
  final bool? isSignedIn;
  final UserData? user;
  const LoginState({this.msal, this.isSignedIn, this.user});

  @override
  List<Object?> get props => [msal, isSignedIn, user];
}

class Empty extends LoginState {}

class Loading extends LoginState {}

class Loaded extends LoginState {
  final MsalMobile msal;
  final bool isSignedIn;

  const Loaded({required this.msal, required this.isSignedIn});

  @override
  List<Object?> get props => [msal, isSignedIn];
}

class UserSignIn extends LoginState {
  final MsalMobile msal;
  final bool isSignedIn;
  final UserData user;

  const UserSignIn({
    required this.msal,
    required this.isSignedIn,
    required this.user,
  });

  @override
  List<Object?> get props => [msal, isSignedIn, user];
}

class Error extends LoginState {
  final String errorMessage;

  const Error({required this.errorMessage});

  @override
  List<Object> get props => [errorMessage];
}
