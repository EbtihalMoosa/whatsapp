import 'package:flutter/material.dart';
import 'package:whatsapp/models/chats.dart';
import 'package:whatsapp/screens/chat_list.dart';
import 'package:whatsapp/screens/status.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  List<Chat> c = [
    Chat(
        chat: "How are you? ",
        name: "Ebtihal ",
        time: "1:17",
        image: "assets/pro.jpg"),
    Chat(
        chat: "tell me!", name: "Ahmed", time: "8:30", image: "assets/pro.jpg"),
    Chat(
        chat: "Thank you",
        name: "Noor",
        time: "10:06",
        image: "assets/pro.jpg"),
    Chat(
        chat: "Wellcome", name: "Sara", time: "10:09", image: "assets/pro.jpg"),
    Chat(chat: "Tell me", name: "Assel", time: "9:02", image: "assets/pro.jpg"),
    Chat(chat: "what", name: "Maysa", time: "12:26", image: "assets/pro.jpg"),
    Chat(
        chat: "what you mean!!",
        name: "Mohammed",
        time: "9:16",
        image: "assets/pro.jpg"),
    Chat(
        chat: "Hello world",
        name: "Retal",
        time: "Yesterday",
        image: "assets/pro.jpg"),
    Chat(
        chat: "what you mean about this point ?",
        name: "Doha",
        time: "Yesterday",
        image: "assets/pro.jpg"),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color.fromARGB(255, 36, 99, 89),
            actions: [
              PopupMenuButton(
                icon: Icon(Icons.more_vert),
                color: Color.fromARGB(255, 210, 204, 204),
                itemBuilder: (context) {
                  return ["setting", "Theme Mode"].map((e) {
                    return PopupMenuItem(
                      child: Text(e),
                      onTap: () {
                        print(e);
                      },
                    );
                  }).toList();
                },
                offset: Offset(0, 15),
              )
            ],
            title: Text("WhatsApp"),
            bottom: TabBar(
              indicatorColor: Colors.white,
              tabs: [
                Tab(icon: Icon(Icons.camera_alt)),
                Tab(
                  text: ("CHATS"),
                ),
                Tab(
                  text: ("STATUS"),
                ),
                Tab(
                  text: ("CALLS"),
                ),
              ],
            ),
          ),
          body: TabBarView(children: [
            Center(
              child: Text("Camera"),
            ),
            //----------------------------------------
            Center(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return ListTile(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  ChatScreen(chat: c[index])));
                    },
                    leading: Hero(
                      tag: c[index].name!,
                      child: Image.asset(
                        c[index].image!,
                        width: 50,
                        height: 50,
                      ),
                    ),
                    title: Text(c[index].name!),
                    subtitle: Text(c[index].chat!),
                    trailing: Text(c[index].time!.toString()),
                  );
                },
                itemCount: c.length,
              ),
            ),
            Center(
              child: Text("Status"),

              // child: ListView.builder(
              //   itemBuilder: (context, index) {
              //     return ListTile(
              //       onTap: () {
              //         Navigator.push(
              //             context,
              //             MaterialPageRoute(
              //                 builder: (context) =>
              //                     // ChatScreen(chat: c[index])));
              //                     StatusScreen(name: status[index])));
              //       },
              //       leading: Hero(
              //         tag: c[index].name!,
              //         child: Image.network(
              //           s[index].image!,
              //           width: 50,
              //           height: 50,
              //         ),
              //       ),
              //       title: Text(s[index].name!),
              //       subtitle: Text(c[index].chat!),
              //       trailing: Text(c[index].time!.toString()),
              //     );
              //   },
              //   itemCount: s.length,
              // ),
            ),

            Center(
              child: Text("call"),
            ),
          ]),
        ));
  }
}
//     return DefaultTabController(
//         length: 4,
//         child: Scaffold(
//           appBar: AppBar(
//             backgroundColor: Color.fromRGBO(11, 68, 61, 1),
//             title: Text("WhatsApp"),

//             //PopupMenue
//             actions: [
//               Icon(Icons.search),
//               SizedBox(
//                 width: 10,
//               ),
//               PopupMenuButton(
//                 // child: Icon(Icons.menu),
//                 color: Colors.white,
//                 itemBuilder: (context) {
//                   return ["setting", "Theme Mode"].map((e) {
//                     return PopupMenuItem(
//                       child: Text(e),
//                       onTap: () {
//                         print(e);
//                       },
//                     );
//                   }).toList();
//                 },
//                 offset: Offset(-25, 20),
//               ),
//             ],
//             bottom: TabBar(indicatorColor: Colors.white, tabs: [
//               Tab(
//                 icon: Icon(Icons.camera_alt),
//               ),
//               Tab(
//                 text: "CHATS",
//               ),
//               Tab(
//                 text: "STATUS",
//               ),
//               Tab(
//                 text: "CALLS",
//               ),
//             ]),
//           ),
//           body: TabBarView(children: [
//             Center(
//               child: Text("Search"),
//             ),
//             Center(
//               child: Text("Home"),
//             ),
//             Center(
//               child: Text("Profile"),
//             ),
//             Center(
//               child: Text("Chat"),
//             ),
//           ]),
//         ));
//   }
// }
