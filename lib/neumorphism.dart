import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class Neumorphim extends StatelessWidget {
  const Neumorphim({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: SafeArea(
        child: Neumorphic(
          child: Column(children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    child: Center(
                      child: Text("Aa",style: TextStyle(
                          fontSize: 42,color: Colors.indigoAccent,fontWeight: FontWeight.bold
                      ),),
                    ),
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white.withOpacity(0.1),
                          offset: Offset(-6.0, -6.0),
                          blurRadius: 16.0,
                        ),
                        BoxShadow(
                          color: Colors.black.withOpacity(0.4),
                          offset: Offset(6.0, 6.0),
                          blurRadius: 16.0,
                        ),
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                  ),
                ),
                Column(children: [
                  NeumorphicButton(
                    onPressed: (){},
                    child: Text("Hello"),
                  ),
                  SizedBox(height: 20),
                  NeumorphicButton(
                    onPressed: (){},
                    child: Text("Hello"),
                  ),
                ],)
              ],
            ),
            SizedBox(height: 20),

          ],)
        ),
      ),
    );
  }
}
