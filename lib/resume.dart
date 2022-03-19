import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 100,left: 20),
        child: Column(children: [
          Row(children: [
            CircleAvatar(radius: 50,backgroundColor: Colors.blueGrey[100],
              backgroundImage: NetworkImage("https://scontent.fdel5-1.fna.fbcdn.net/v/t1.6435-9/91521084_3472467256103073_8084593683459997696_n.jpg?_nc_cat=111&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=VbaUw7B8vA0AX90tp8n&_nc_ht=scontent.fdel5-1.fna&oh=00_AT97g0cuYUe738PceOM2woBBoD0Y2yWUJ5LYoIH7P3nXAQ&oe=6257E46A"),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Column(
                children:[
                  Text("S Hussain",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30.0),),
                  Text("App Devloper",style: TextStyle(fontSize: 20)),
                ],
              ),
            ),
          ],),
          Padding(
            padding: const EdgeInsets.only(left: 30,top: 20),
            child: Row(children: [
              Icon(Icons.school,size: 30,),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text("CEC Landarn",style: TextStyle(fontSize: 20),),
              )
            ],),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30.0,top: 10.0),
            child: Row(children: [
              Icon(Icons.desktop_mac,size: 30,),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text("Flutter Project",style: TextStyle(fontSize: 20),),
              )
            ]),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30.0,top: 10.0),
            child: Row(children: [
              Icon(Icons.location_on,size: 30,),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text("Laxmi Nagar, Delhi",style: TextStyle(fontSize: 20),),
              )
            ]),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30.0,top: 10.0),
            child: Row(children: [
              Icon(Icons.mail,size: 30,),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text("sajjadsazz@gmail.com",style: TextStyle(fontSize: 20),),
              )
            ]),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30.0,top: 10.0),
            child: Row(children: [
              Icon(Icons.call,size: 30,),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text("8699588949",style: TextStyle(fontSize: 20),),
              )
            ]),
          ),
          SizedBox(height: 20,),
          Text("To succeed in an environment of growth and excellence and earn a job which provides me job satisfaction and self-development and help me achieve personal as well as organisational goals."),
          SizedBox(height: 50,),
          Text("Created By SaZz"),
        ],),
      ),
    );
  }
}