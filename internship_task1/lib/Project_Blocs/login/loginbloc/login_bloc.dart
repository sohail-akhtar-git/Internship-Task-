
import 'package:bloc/bloc.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginInitial()) {
    on<LoginClickedEvent>((event, emit) async {
      if(!_validateMail(event.email,event.pass)){
        print("Erroe");
        emit(ErrorState());}
      else{
        emit(LodingState());
        await Future.delayed(Duration(seconds: 3));
        emit(LodedState());
        emit(LoginInitial());
      }


    });
    on<EmailClickedEvent>((event, emit) {
      emit(EmailBtnState());
    });
    on<GoogleClickedEvent>((event, emit) {
      emit(GoogleBtnState());
    });
  }

  bool _validateMail(String email,String pass) {

    if(pass.length<8){
      return false;
    }
    if(EmailValidator.validate(email)){
      return true;
    }
    return false;
  }
}
