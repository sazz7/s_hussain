import 'package:flutter/material.dart';

class Mylogin extends StatefulWidget {
  const Mylogin({Key? key}) : super(key: key);

  @override
  _MyloginState createState() => _MyloginState();
}

class _MyloginState extends State<Mylogin> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage(
          "assets/login.png",
        ),
        fit: BoxFit.cover,
      )),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          fit: StackFit.expand,
          children: [
            Container(
              padding: EdgeInsets.only(top: 90, left: 40),
              child: Text(
                "Welcom\nBack",
                style: TextStyle(color: Colors.white, fontSize: 33),
              ),
            ),
            Positioned.fill(
              top: 160,
              child: Align(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: TextField(
                        decoration: InputDecoration(
                            contentPadding:
                                EdgeInsets.symmetric(vertical: 0, horizontal: 12),
                            filled: true,
                            fillColor: Colors.grey.shade50,
                            labelText: "Enter email id",
                            hintText: "Email",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                            )),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            contentPadding:
                                EdgeInsets.symmetric(vertical: 0, horizontal: 12),
                            filled: true,
                            fillColor: Colors.grey.shade50,
                            labelText: "Enter password",
                            hintText: "Password",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                            )),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                        Text("Sing In",style: TextStyle(
                          fontSize: 30,fontWeight: FontWeight.w400,decoration: TextDecoration.underline
                        ),),
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: Color(0xff3B434D),
                          child: IconButton(
                            color: Colors.white,
                            onPressed: (){
                              Navigator.pushNamed(context, "login_home");
                            },
                            icon: Icon(Icons.arrow_forward),
                          ),
                        )
                      ],),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                        TextButton(onPressed: (){Navigator.pushNamed(context, "singup");},
                            child: Text("Sing up",style: TextStyle(
                          decoration: TextDecoration.underline,fontSize: 15
                        ))),
                        TextButton(onPressed: (){}, child: Text("Forget password",style: TextStyle(
                            decoration: TextDecoration.underline,fontSize: 15
                        ))),
                      ],),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}