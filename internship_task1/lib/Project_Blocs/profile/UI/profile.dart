import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:internship_task1/Project_Blocs/profile/UI/editProfile.dart';
import 'package:internship_task1/Project_Blocs/signup/UI/signup.dart';
import 'package:internship_task1/data/userDetails.dart';

import '../../home/homebloc/home_bloc.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Profile",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white12,
        elevation: 0,
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  margin: EdgeInsets.only(top: 20),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                          color: CupertinoColors.systemGreen, width: 5)),
                  height: 100,
                  width: 100,
                  child: Image(image: AssetImage("images/hero.png"))),
              Padding(
                padding: const EdgeInsets.only(right: 50),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(StudentDetails.name,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CupertinoButton(
                        color: Colors.blue,
                        child: Text("Edit Profile"),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Student(),
                              ));
                        },
                      ),
                    )
                  ],
                ),
              ),
              // Expanded(
              //     child:
              // ),
            ],
          ),
          ListTile(
            title: Text("Email"),
            subtitle: Text(StudentDetails.mail),
          ),
          ListTile(
            title: Text("College"),
            subtitle: Text(StudentDetails.college),
          ),
          ListTile(
            title: Text("Core Skills"),
            subtitle: Text(StudentDetails.coreSkill),
          ),
          ListTile(
            title: Text("Degree"),
            subtitle: Text(StudentDetails.degree),
          ),
          ListTile(
            title: Text("Hobbies"),
            subtitle: Text(StudentDetails.hobbies),
          ),
          ListTile(
            title: Text("Achievements"),
            subtitle: Text(StudentDetails.achievements),
          )
        ],
      ),
    );
  }
}
