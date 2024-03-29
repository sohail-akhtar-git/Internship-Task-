import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:internship_task1/Project_Blocs/home/UI/homepage.dart';
import 'package:internship_task1/Project_Blocs/login/loginbloc/login_bloc.dart';
import 'package:internship_task1/Project_Blocs/signup/UI/signup.dart';
import 'package:internship_task1/data/userDetails.dart';

class LogIn extends StatelessWidget {
  LogIn({super.key});

  final LoginBloc loginBloc = LoginBloc();

  final  TextEditingController emailController = TextEditingController();
  final  TextEditingController passController = TextEditingController();


  @override
  Widget build(BuildContext context) {





    return BlocConsumer<LoginBloc, LoginState>(

      bloc: loginBloc,
      listenWhen: (previous, current) => current is LoginActionState,
      buildWhen: (previous, current) => current is !LoginActionState,
      listener: (context, state) {
        if (state is LodedState) {
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>HomePage() ,));
        } else if (state is EmailBtnState) {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SignUp(),
              ));
        }
      },
      builder: (context, state) {

        return Scaffold(
            body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                      height: 200,
                      width: 400,
                      child: Image(
                          fit: BoxFit.cover,
                          image: AssetImage('images/4428861.jpg')))),
            ),
            const Center(
                child: Text("Join US", style: TextStyle(fontSize: 50))),
            state is ErrorState?Text("Invalid Email",style: TextStyle(color: Colors.red),):Container(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: emailController,
                autofocus: true,
                decoration: InputDecoration(
                  label: Text("Email"),
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            state is ErrorState?Text("Invalid Password",style: TextStyle(color: Colors.red)):Container(),
             Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                controller: passController,
                autofocus: true,
                obscureText: true,
                decoration: InputDecoration(
                  label: Text("Password"),
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: state is LodingState?Center(child: CircularProgressIndicator()):CupertinoButton(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10),
                  child: Text("LogIn"),
                  onPressed: () {
                    loginBloc.add(LoginClickedEvent(emailController.text,passController.text));
                  }),
            ),
            const Divider(
              height: 50,
              color: Colors.black45,
              thickness: 1,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Center(
                child: Text(" SignUp Here", style: TextStyle(fontSize: 15)),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CupertinoButton(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10),
                      child: Text("Email"),
                      onPressed: () {
                        loginBloc.add(EmailClickedEvent());
                      }),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CupertinoButton(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10),
                      child: Text("Google"),
                      onPressed: () {
                        loginBloc.add(GoogleClickedEvent());
                      }),
                ),
              ],
            ),
          ],
        ));
      },
    );
  }
}
