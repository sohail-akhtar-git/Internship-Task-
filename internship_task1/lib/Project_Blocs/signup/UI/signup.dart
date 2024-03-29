
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:internship_task1/Project_Blocs/recomendation/UI/recomend.dart';
import 'package:internship_task1/data/userDetails.dart';
import '../signbloc/signup_bloc.dart';

class SignUp extends StatelessWidget {
  SignUp({super.key});

  SignupBloc signupBloc = SignupBloc();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignupBloc, SignupState>(
      bloc: signupBloc,
      listener: (context, state) {
        if (state is StudentState) {
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => Student(),
              ));
        } else if (state is FacultyState) {
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => Teacher(),
              ));
        } else if (state is OrgnasitationState) {
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => Organisation(),
              ));
        }
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(centerTitle: true, title: const Text("SignUp")),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text(
                "Select Your Role",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CupertinoButton(
                    onPressed: () {
                      signupBloc.add(StudentEvent());
                    },
                    child: Container(
                      width: 170,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromARGB(123, 111, 12, 123),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child:
                                Image(image: AssetImage('images/graduate.png')),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Student",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  CupertinoButton(
                    onPressed: () {
                      signupBloc.add(FacultyEvent());
                    },
                    child: Container(
                      width: 170,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromARGB(123, 111, 12, 123),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child:
                                Image(image: AssetImage('images/teacher.png')),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Teachers/faculty",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              CupertinoButton(
                onPressed: () {
                  signupBloc.add(OrganisationEvent());
                },
                child: Container(
                  width: 170,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromARGB(123, 111, 12, 123),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image(image: AssetImage('images/school.png')),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Organisation",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class Student extends StatelessWidget {
  Student({super.key});
  TextEditingController achievements=TextEditingController();
  TextEditingController hobbies=TextEditingController();
  TextEditingController coreSkills=TextEditingController();
  TextEditingController name=TextEditingController();
  TextEditingController degree=TextEditingController();
  TextEditingController mail=TextEditingController();
  TextEditingController college=TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SignUp"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                Center(
                  child: Container(
                    margin: EdgeInsets.all(50),
                    padding: EdgeInsets.all(2),
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(color: Colors.blue,width: 2)
                    ),
                    child: Image.asset('images/hero.png'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: name,
                      decoration: InputDecoration(
                          label: Text("Name"),
                          border: OutlineInputBorder(),
                      ),

                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: college,
                    decoration: InputDecoration(
                      label: Text("College Name"),
                      border: OutlineInputBorder(),
                    ),

                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: degree,
                    decoration: InputDecoration(
                      label: Text("Degree"),
                      border: OutlineInputBorder(),
                    ),

                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: mail,
                    decoration: InputDecoration(
                      label: Text("Email"),
                      border: OutlineInputBorder(),
                    ),

                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: coreSkills,
                    decoration: InputDecoration(
                      label: Text("Core Skill"),
                      border: OutlineInputBorder(),
                    ),

                  ),
                ),
                Padding(

                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: hobbies,
                    decoration: InputDecoration(
                      label: Text("Hobbies"),
                      border: OutlineInputBorder(),
                    ),

                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: achievements,
                    decoration: InputDecoration(
                      label: Text("Achievements"),
                      border: OutlineInputBorder(),
                    ),

                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: CupertinoButton(color: Colors.blue,child: Text("Next"), onPressed: () {
                    StudentDetails.name=name.text;
                    StudentDetails.college=college.text;
                    StudentDetails.degree=degree.text;
                    StudentDetails.mail=mail.text;
                    StudentDetails.coreSkill=coreSkills.text;
                    StudentDetails.hobbies=hobbies.text;
                    StudentDetails.achievements=achievements.text;
                    if(validate()) {
                      Navigator.pushReplacement(
                          context, MaterialPageRoute(builder: (context) =>
                          ConfirmMail(),));
                    }
                    else{
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(backgroundColor: Colors.red,content: Text("Please Fill All the Details Correctly")));
                    }
                  },),
                )

              ],
            ),
          )
        ],
      ),
    );
  }

  bool validate() {

    if(
    StudentDetails.name.length ==0 ||
    StudentDetails.college.length ==0 ||
    StudentDetails.degree.length ==0 ||
    StudentDetails.mail.length ==0 ||
    StudentDetails.coreSkill.length ==0 ||
    StudentDetails.hobbies.length ==0 ||
    StudentDetails.achievements.length ==0
    )
      {
        return false;
      }

    return true;
  }
}


class Teacher extends StatelessWidget {
  const Teacher({super.key});

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        title: Text("SignUp"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                Center(
                  child: Container(
                    margin: EdgeInsets.all(50),
                    padding: EdgeInsets.all(2),
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(color: Colors.blue,width: 2)
                    ),
                    child: Image.asset('images/hero.png'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                      label: Text("Name"),
                      border: OutlineInputBorder(),
                    ),

                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                      label: Text("College Name"),
                      border: OutlineInputBorder(),
                    ),

                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                      label: Text("Department"),
                      border: OutlineInputBorder(),
                    ),

                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: CupertinoButton(color: Colors.blue,child: Text("Next"), onPressed: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => ConfirmMail(),));
                  },),
                )

              ],
            ),
          )
        ],
      ),
    );
  }
}

class Organisation extends StatelessWidget {
  const Organisation({super.key});

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        title: const Text("SignUp"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                Center(
                  child: Container(
                    margin: const EdgeInsets.all(50),
                    padding: const EdgeInsets.all(2),
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(color: Colors.blue,width: 2)
                    ),
                    child: Image.asset('images/hero.png'),
                  ),
                ),
                const Padding(
                  padding:  EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                      label: Text("College Name"),
                      border: OutlineInputBorder(),
                    ),

                  ),
                ),
                const Padding(
                  padding:  EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                      label: Text("Location"),
                      border: OutlineInputBorder(),
                    ),

                  ),
                ),
                const Padding(
                  padding:  EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                      label: Text("Other Details"),
                      border: OutlineInputBorder(),
                    ),

                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: CupertinoButton(color: Colors.blue,child: Text("Next"), onPressed: () {

                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => ConfirmMail(),));
                  },),
                )

              ],
            ),
          )
        ],
      ),
    );
  }
}

class ConfirmMail extends StatelessWidget {
   ConfirmMail({super.key});
  SignupBloc _signupBloc= SignupBloc();
  @override
  Widget build(BuildContext context) {
    return  BlocConsumer<SignupBloc, SignupState>(
      bloc: _signupBloc,
  listenWhen: (previous, current) => current is SignupActionState,
  buildWhen: (previous, current) => current is !SignupActionState,

  listener: (context, state) {
    if(state is LoddedState){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Recomend(),));
    }
  },
  builder: (context, state) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SignUp"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  label: Text("College Email Id"),
                  border: OutlineInputBorder(),
                ),

              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: state is LodingState?CircularProgressIndicator():CupertinoButton(color: Colors.blue,child: Text("Next"), onPressed: () {
                _signupBloc.add(FinalEvent());
              },),
            )
          ],
        ),
      )
    );
  },
);
  }
}

