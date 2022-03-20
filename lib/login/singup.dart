import 'package:flutter/material.dart';

class Singup extends StatelessWidget {
  const Singup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              "assets/register.png",
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
                "Register",
                style: TextStyle(color: Colors.white, fontSize: 33),
              ),
            ),
            Positioned.fill(
              top: 160,
              child: Align(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(children: [
                        Expanded(child: _textfild("First name")),
                        Expanded(child: _textfild("Last name"))
                      ],),
                      SizedBox(height: 10,),
                      Row(children: [
                        Expanded(child: _textfild("First name")),
                        Expanded(child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Container(
                            height: 45,
                            color: Colors.red,
                            child: Text("h"),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              border: Border.all(
                                width: 5,
                                color: Colors.black
                              )
                            ),
                          ),
                        ))
                      ],),
                      SizedBox(height: 10,),
                      _textfild("Moblie no."),
                      SizedBox(height: 10,),
                      _textfild("Email id"),
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        height: 40,
                        width: 150,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Colors.cyan),
                          ),
                          onPressed: () {},
                          child: Text("Sing up"),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

_textfild(text){
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10),
    child: TextField(
      decoration: InputDecoration(
          contentPadding:
          EdgeInsets.symmetric(vertical: 0, horizontal: 15),
          filled: true,
          fillColor: Colors.grey[300],
          hintText: text,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          )),
    ),
  );
}