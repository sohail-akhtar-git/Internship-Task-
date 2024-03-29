import 'package:flutter/material.dart';
import 'package:internship_task1/Project_Blocs/chat/UI/chatscreen.dart';

class Chat extends StatelessWidget {
  const Chat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(centerTitle: true, title: Text("Chats"), leading: Container()),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.builder(
            itemCount: 8,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  title: Text("User $index"),
                  subtitle: Text("Message "),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ChatScreen(),));
                  },
                )
              );
            },
          ),
        ),
      ),
    );
  }
}
