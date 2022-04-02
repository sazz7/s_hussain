import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class Neumorphim extends StatelessWidget {
  const Neumorphim({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Neumorphic(
          style: NeumorphicStyle(
            color: Colors.white
          ),
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
                  SizedBox(height: 40, width: 120,
                    child: NeumorphicButton(
                      style: NeumorphicStyle(
                        color: Colors.white,
                      ),
                      onPressed: (){},
                      child: Center(child: Text("Button")),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(height: 40, width: 120,
                    child: Center(child: TextField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(12),
                        prefixIcon: Icon(Icons.email,color: Colors.black),
                        hintText: "Email",hintStyle: TextStyle(
                        color: Colors.black
                      ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                          borderRadius: BorderRadius.circular(32),
                        )
                      ),
                    )),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(32),
                      color: Colors.white,
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
                    ),
                  )
                ],)
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(height: 40, width: 200,
                  decoration: ShapeDecoration(
                    gradient: LinearGradient(
                      colors: [Color(0xFFe6dfd8), Color(0xFFf7f5ec)],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      stops: [0.0, 0.4],
                      tileMode: TileMode.clamp,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(32.0)),
                    ),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(12),
                      hintText: "Email",
                      prefixIcon: Icon(Icons.email),
                      enabledBorder: UnderlineInputBorder(
                        borderRadius: BorderRadius.circular(32),
                        borderSide: BorderSide(color: Colors.transparent)
                      )
                    ),
                  ),
                ),
                Container(height: 35,width: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(32),
                    color: Colors.red,
                  ),
                )
              ],
            )
          ],)
        ),
      ),
    );
  }
}
