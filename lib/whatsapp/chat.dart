import 'package:flutter/material.dart';

class Chat extends StatefulWidget {
  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      Padding(
        padding: const EdgeInsets.only(top: 8.0,left: 20),
        child: CircleAvatar(
          radius: 40,
          backgroundColor: Colors.blueAccent,
        ),
      )
    ],);
  }
}
