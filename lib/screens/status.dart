import 'package:flutter/material.dart';
import 'package:whatsapp/models/status_details.dart';

class StatusScreen extends StatefulWidget {
  const StatusScreen({super.key, required name});

  @override
  State<StatusScreen> createState() => _StatusScreenState();
}

class _StatusScreenState extends State<StatusScreen> {
  List<Status> status = [
    Status(
        image:
            "https://static.vecteezy.com/system/resources/previews/009/734/564/original/default-avatar-profile-icon-of-social-media-user-vector.jpg",
        name: "Noor"),
    Status(
        image:
            "https://static.vecteezy.com/system/resources/previews/009/734/564/original/default-avatar-profile-icon-of-social-media-user-vector.jpg",
        name: "Sara"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.message_rounded,
        ),
        backgroundColor: Colors.teal.shade900,
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ListTile(
              leading: CircleAvatar(
                radius: 25,
                backgroundImage: NetworkImage(
                    "https://i.pinimg.com/736x/f5/c2/33/f5c233abe166b186b989293ad18ba07a.jpg"),
              ),
              title: Text("Programmer"),
              subtitle: Text("Today, 12:30 am"),
              trailing: Icon(Icons.more_vert),
            ),
            const Text("     Recent Updates"),
            Expanded(
                child: ListView.builder(
              itemCount: status.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(status[index].image!),
                    radius: 25,
                  ),
                  title: Text(status[index].name!),
                  subtitle: Text("Today, 5:40"),
                );
              },
            )),
            Text("     Viewd Updates"),
            Expanded(
                child: ListView.builder(
              itemCount: status.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(status[index].image!),
                    radius: 25,
                  ),
                  title: Text(status[index].name!),
                  subtitle: Text("Yesterday, 9:31"),
                );
              },
            )),
            Expanded(
                child: ListView.builder(
              itemCount: status.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(status[index].image!),
                    radius: 25,
                  ),
                  title: Text(status[index].name!),
                  subtitle: Text("Yesterday, 9:31"),
                );
              },
            )),
          ],
        ),
      ),
    );
  }
}
