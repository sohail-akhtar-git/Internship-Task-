part of 'login_bloc.dart';

@immutable
sealed class LoginState {}

abstract class LoginActionState extends LoginState{}

class LoginBtnState extends LoginActionState{


}
class EmailBtnState extends LoginActionState{}
class GoogleBtnState extends LoginActionState{}


class LoginInitial extends LoginState {}
class LodingState extends LoginState {}
class LodedState extends LoginActionState {}

class ErrorState extends LoginState{}
