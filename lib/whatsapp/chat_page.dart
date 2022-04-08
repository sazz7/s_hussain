import 'package:flutter/material.dart';
import 'package:s_hussain/whatsapp/chat_data.dart';
import 'package:s_hussain/whatsapp/chats.dart';

class Chat extends StatefulWidget {
  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: chatdata.length,
          itemBuilder: (context, i) =>(
          Column(children: [
            Divider(height: 10,),
            ListTile(
              leading: CircleAvatar(
                radius: 40,
                backgroundColor: Colors.grey,
                backgroundImage: AssetImage(chatdata[i].avatar),
              ),
              title: Text(chatdata[i].name,style: TextStyle(
                fontWeight: FontWeight.bold,fontSize: 20
              ),),
              subtitle: Text(chatdata[i].chat,style: TextStyle(
                fontSize: 15,color: Colors.grey
              ),),
              trailing: Text(chatdata[i].time,style: TextStyle(
                fontSize: 13,color: Colors.grey
              ),),
              onTap: (){ print("Chat page");
                Navigator.push(context, MaterialPageRoute(builder: (context) => Chats()));
              },
            )
          ],)
          )
      ),
    );
  }
}