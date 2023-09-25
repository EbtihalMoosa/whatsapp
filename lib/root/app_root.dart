import 'package:flutter/material.dart';
import 'package:whatsapp/screens/chat_list.dart';
import 'package:whatsapp/screens/home_screen.dart';

class AppRoot extends StatelessWidget {
  const AppRoot({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
