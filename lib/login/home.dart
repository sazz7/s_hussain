import 'package:flutter/material.dart';

class Loginhome extends StatelessWidget {
  const Loginhome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Text("Welcom Back",style: TextStyle(
          fontSize: 32
        ),),
      ),
    );
  }
}
