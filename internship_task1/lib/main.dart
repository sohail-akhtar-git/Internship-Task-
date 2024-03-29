import 'package:flutter/material.dart';
import 'package:internship_task1/Project_Blocs/login/UI/login.dart';
import 'package:internship_task1/data/userDetails.dart';
import 'Project_Blocs/home/UI/homepage.dart';
import 'Project_Blocs/recomendation/UI/recomend.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme:  ThemeData(colorScheme: const ColorScheme(brightness: Brightness.light, primary: Colors.blue, onPrimary: Colors.white, secondary: Colors.cyanAccent, onSecondary: Colors.teal, error: Colors.red, onError: Colors.red, background: Colors.blue, onBackground: Colors.lightBlue, surface: Colors.lightBlueAccent, onSurface: Colors.cyanAccent)),
      // home: UserDetails.In?HomePage():LogIn(),
      home: LogIn(),
    );
  }
}

