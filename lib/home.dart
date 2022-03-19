import 'package:flutter/material.dart';

class Mainhome extends StatelessWidget {
  const Mainhome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: Stack(
        children: [
          Image.asset("assets/home.jpg",fit: BoxFit.cover,height: MediaQuery.of(context).size.height,),
          Container(
            child: Column(children: [
              SizedBox(height: 30,),
              Row(children: [
                _button(btext: "Resume", press: () {Navigator.pushNamed(context, "resume");}),
                _button(btext: "Login", press: () {Navigator.pushNamed(context, "login");}),
                _button(btext: "WhatApp",press: (){Navigator.pushNamed(context, "whatsapp");}),
              ],)
            ],
            ),
          ),
        ],
      ),
    );
  }
}

_button({required String btext,VoidCallback? press}){
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: SizedBox(width: 100,height: 50,
      child: ElevatedButton(
        onPressed: press,
        child: Text(btext),
      ),
    ),
  );
}