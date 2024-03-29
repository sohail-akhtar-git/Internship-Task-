import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:internship_task1/Project_Blocs/home/UI/homepage.dart';

class Recomend extends StatelessWidget {
  Recomend({super.key});

  List<String> names = [
    "Luci",
    "Warner",
    "Saniya",
    "David",
    "Selvi",
  ];
  List<String> pics = [
    "https://wallpapers.com/images/hd/professional-profile-pictures-1500-x-2100-bvjgzg0cwa8r051t.jpg",
    "https://img.freepik.com/free-photo/close-up-portrait-young-bearded-man-white-shirt-jacket-posing-camera-with-broad-smile-isolated-gray_171337-629.jpg?size=626&ext=jpg&ga=GA1.1.1224184972.1711670400&semt=ais",
    "https://media.istockphoto.com/id/1318482009/photo/young-woman-ready-for-job-business-concept.jpg?s=612x612&w=0&k=20&c=Jc1NcoUMoM78AxPTh9EApaPU2kXh2evb499JgW99b0g=",
    "https://img.freepik.com/free-photo/portrait-optimistic-businessman-formalwear_1262-3600.jpg",
    "https://media.istockphoto.com/id/1317804578/photo/one-businesswoman-headshot-smiling-at-the-camera.jpg?s=612x612&w=0&k=20&c=EqR2Lffp4tkIYzpqYh8aYIPRr-gmZliRHRxcQC5yylY="
  ];

  @override
  Widget build(BuildContext context) {
    int state=0;
    return Scaffold(
        appBar: AppBar(
          title: Text("Recommendation"),
          actions: [
            TextButton(
              child: Text("Skip", style: TextStyle(color: Colors.white)),
              onPressed: () async {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomePage(),
                    ));
              },
            )
          ],
        ),
        body: Column(
          children: [
            Expanded(
                child: GridView.count(
              // Create a grid with 2 columns. If you change the scrollDirection to
              // horizontal, this produces 2 rows.
              scrollDirection: Axis.vertical,
              crossAxisCount: 2,
              // Generate 100 widgets that display their index in the List.
              children: List.generate(5, (index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      children: [
                        Center(
                          child: Container(
                            margin: EdgeInsets.only(top: 10),
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                border:
                                    Border.all(color: Colors.blue, width: 2)),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child:
                                  Image.network(pics[index], fit: BoxFit.cover),
                            ),
                          ),
                        ),
                        Text(names[index]),
                        ElevatedButton(onPressed: () {state=1;}, child: state==0?Text("Add"):Text("Added"))

                ],
                    ),
                  ),
                );
              }),
            )),
          ],
        ));
  }
}

