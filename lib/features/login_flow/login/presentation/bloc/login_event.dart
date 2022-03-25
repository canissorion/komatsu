part of 'login_bloc.dart';

abstract class LoginEvent extends Equatable {
  const LoginEvent();

  @override
  List<Object> get props => [];
}

class InitLoginEvent extends LoginEvent {}

class SessionInitEvent extends LoginEvent {}

class UserLoged extends LoginEvent {}
