part of 'login_bloc.dart';

@immutable
sealed class LoginEvent {}

class LoginClickedEvent extends LoginEvent{

  final email;
  final pass;

  LoginClickedEvent(this.email, this.pass);



}

class EmailClickedEvent extends LoginEvent{

}

class GoogleClickedEvent extends LoginEvent{

}


