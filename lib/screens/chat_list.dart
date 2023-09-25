import 'package:flutter/material.dart';
import 'package:whatsapp/models/chats.dart';

class ChatScreen extends StatelessWidget {
  ChatScreen({super.key, required this.chat});
  Chat chat;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 36, 99, 89),
        actions: [
          Icon(Icons.missed_video_call_sharp),
          Icon(Icons.phone),
          Icon(Icons.more_vert)
        ],
      ),
      body: Column(
        children: [
          Hero(
              tag: chat.name!,
              child: Image.network(
                chat.image!,
                width: 400,
                height: 400,
              )),
          Text(chat.chat!),
          Text(chat.name!),
          Text(chat.time!.toString())
        ],
      ),
    );
  }
}

// import 'package:flutter/material.dart';

// class ChatList extends StatelessWidget {
//   const ChatList({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {},
//         child: Icon(Icons.chat),
//       ),
//       body: ListView(
//         children: [
//           Card(),
//         ],
//       ),
//     );
//   }
// }
