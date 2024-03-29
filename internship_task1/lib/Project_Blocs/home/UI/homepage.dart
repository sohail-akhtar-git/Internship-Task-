import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:internship_task1/Project_Blocs/chat/UI/chat.dart';
import 'package:internship_task1/Project_Blocs/home/UI/homeitems.dart';
import 'package:internship_task1/Project_Blocs/home/homebloc/home_bloc.dart';
import 'package:internship_task1/Project_Blocs/profile/UI/profile.dart';

import '../../event/UI/event.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initstate()
  {
    _homeBloc.add(HomeItemsLoddingEvent());
    super.initState();
  }

  int _index = 0;

  HomeBloc _homeBloc = HomeBloc();

  List<String> image=[
    "https://wac-cdn.atlassian.com/dam/jcr:ba03a215-2f45-40f5-8540-b2015223c918/Max-R_Headshot%20(1).jpg?cdnVersion=1520",
    "https://wac-cdn.atlassian.com/dam/jcr:ba03a215-2f45-40f5-8540-b2015223c918/Max-R_Headshot%20(1).jpg?cdnVersion=1520",
    "https://wac-cdn.atlassian.com/dam/jcr:ba03a215-2f45-40f5-8540-b2015223c918/Max-R_Headshot%20(1).jpg?cdnVersion=1520",
    "https://wac-cdn.atlassian.com/dam/jcr:ba03a215-2f45-40f5-8540-b2015223c918/Max-R_Headshot%20(1).jpg?cdnVersion=1520",
    "https://wac-cdn.atlassian.com/dam/jcr:ba03a215-2f45-40f5-8540-b2015223c918/Max-R_Headshot%20(1).jpg?cdnVersion=1520",
    "https://wac-cdn.atlassian.com/dam/jcr:ba03a215-2f45-40f5-8540-b2015223c918/Max-R_Headshot%20(1).jpg?cdnVersion=1520",
    "https://wac-cdn.atlassian.com/dam/jcr:ba03a215-2f45-40f5-8540-b2015223c918/Max-R_Headshot%20(1).jpg?cdnVersion=1520",
    "https://wac-cdn.atlassian.com/dam/jcr:ba03a215-2f45-40f5-8540-b2015223c918/Max-R_Headshot%20(1).jpg?cdnVersion=1520",

  ];
  List<String> post=[
    "https://dfstudio-d420.kxcdn.com/wordpress/wp-content/uploads/2019/06/digital_camera_photo-1080x675.jpg",
    "https://dfstudio-d420.kxcdn.com/wordpress/wp-content/uploads/2019/06/digital_camera_photo-1080x675.jpg",
    "https://dfstudio-d420.kxcdn.com/wordpress/wp-content/uploads/2019/06/digital_camera_photo-1080x675.jpg",
    "https://dfstudio-d420.kxcdn.com/wordpress/wp-content/uploads/2019/06/digital_camera_photo-1080x675.jpg",
    "https://dfstudio-d420.kxcdn.com/wordpress/wp-content/uploads/2019/06/digital_camera_photo-1080x675.jpg",
    "https://dfstudio-d420.kxcdn.com/wordpress/wp-content/uploads/2019/06/digital_camera_photo-1080x675.jpg",
    "https://dfstudio-d420.kxcdn.com/wordpress/wp-content/uploads/2019/06/digital_camera_photo-1080x675.jpg",
    "https://dfstudio-d420.kxcdn.com/wordpress/wp-content/uploads/2019/06/digital_camera_photo-1080x675.jpg",
  ];


  @override
  Widget build(BuildContext context) {

    return  BlocConsumer<HomeBloc, HomeState>(
        bloc: _homeBloc,
        listener: (context, state) {
          // TODO: implement listener
        },
        buildWhen: (previous, current) => current is HomeState,
        builder: (context, state) {
          if (state is HomeInitial) {
            return Scaffold(
              appBar: AppBar(
              leading: MaterialButton(
                onPressed: () {
                  _homeBloc.add(ProfilePicClickedEvent());
                },
                child: Image(image: AssetImage('images/hero.png')),
              ),
              leadingWidth: 80,
              title: Text(
                "A P P",
                style: TextStyle(color: Colors.black),
              ),
              centerTitle: true,
              actions: [
                IconButton(
                  onPressed: () {
                    _homeBloc.add(SearchBtnClickedEvent());
                  },
                  icon: Icon(
                    Icons.search,
                    color: Colors.black,
                    size: 30,
                  ),
                )
              ],
            ),
              body: ListView.builder(itemCount: 8,itemBuilder: (context, index) {
                return HomeItems( imageUrl: image[index],postUrl: post[index] ,);
              },),
              bottomNavigationBar: BottomNavigationBar(
              currentIndex: _index,
              onTap: (value) {
                switch (value) {
                  case 0:
                    _index=value;
                    _homeBloc.add(HomeBtnClickedEvent());
                    break;
                  case 1:
                    _index=value;
                    _homeBloc.add(ChatBtnClickedEvent());
                    break;
                  case 2:
                    _index=value;
                    _homeBloc.add(EventBtnClickedEvent());
                    break;
                  case 3:
                    _index=value;
                    _homeBloc.add(ProfileBtnClickedEvent());
                    break;
                }
              },
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'Home',

                  // backgroundColor: Colors.green,
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.chat),
                  label: 'Chat',
                  // backgroundColor: Colors.green,
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.event),
                  label: 'Events',
                  // backgroundColor: Colors.purple,
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  label: 'Profile',
                  // backgroundColor: Colors.pink,
                ),
              ],
            ),); //HomePage
          }
          else if (state is ChatState) {
            return Scaffold(body:  Chat(),bottomNavigationBar: BottomNavigationBar(
              currentIndex: _index,
              onTap: (value) {
                switch (value) {
                  case 0:
                    _index=value;
                    _homeBloc.add(HomeBtnClickedEvent());
                    break;
                  case 1:
                    _index=value;
                    _homeBloc.add(ChatBtnClickedEvent());
                    break;
                  case 2:
                    _index=value;
                    _homeBloc.add(EventBtnClickedEvent());
                    break;
                  case 3:
                    _index=value;
                    _homeBloc.add(ProfileBtnClickedEvent());
                    break;
                }
              },
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'Home',

                  // backgroundColor: Colors.green,
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.chat),
                  label: 'Chat',
                  // backgroundColor: Colors.green,
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.event),
                  label: 'Events',
                  // backgroundColor: Colors.purple,
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  label: 'Profile',
                  // backgroundColor: Colors.pink,
                ),
              ],
            ),);//ChatPage
          }
          else if (state is EventState) {
            return Scaffold(body: Event(),bottomNavigationBar: BottomNavigationBar(
              currentIndex: _index,
              onTap: (value) {
                switch (value) {
                  case 0:
                    _index=value;
                    _homeBloc.add(HomeBtnClickedEvent());
                    break;
                  case 1:
                    _index=value;
                    _homeBloc.add(ChatBtnClickedEvent());
                    break;
                  case 2:
                    _index=value;
                    _homeBloc.add(EventBtnClickedEvent());
                    break;
                  case 3:
                    _index=value;
                    _homeBloc.add(ProfileBtnClickedEvent());
                    break;
                }
              },
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'Home',

                  // backgroundColor: Colors.green,
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.chat),
                  label: 'Chat',
                  // backgroundColor: Colors.green,
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.event),
                  label: 'Events',
                  // backgroundColor: Colors.purple,
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  label: 'Profile',
                  // backgroundColor: Colors.pink,
                ),
              ],
            ),);// EventPage
          }
          else if (state is ProfileState) {
            return Scaffold(body: Profile(),bottomNavigationBar: BottomNavigationBar(
              currentIndex: 3,
              onTap: (value) {
                switch (value) {
                  case 0:
                    _index=value;
                    _homeBloc.add(HomeBtnClickedEvent());
                    break;
                  case 1:
                    _index=value;
                    _homeBloc.add(ChatBtnClickedEvent());
                    break;
                  case 2:
                    _index=value;
                    _homeBloc.add(EventBtnClickedEvent());
                    break;
                  case 3:
                    _index=value;
                    _homeBloc.add(ProfileBtnClickedEvent());
                    break;
                }
              },
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'Home',

                  // backgroundColor: Colors.green,
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.chat),
                  label: 'Chat',
                  // backgroundColor: Colors.green,
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.event),
                  label: 'Events',
                  // backgroundColor: Colors.purple,
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  label: 'Profile',
                  // backgroundColor: Colors.pink,
                ),
              ],
            ),); // ProfilePage
          }
          else if(state is ItemsLoddingState){
            return Center(child: CircularProgressIndicator(),);
          }
          else{
            return Scaffold();
          }
        },
    );
  }
}


