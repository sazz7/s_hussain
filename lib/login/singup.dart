import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Singup extends StatefulWidget {
   Singup({Key? key}) : super(key: key);

  @override
  State<Singup> createState() => _SingupState();
}

class _SingupState extends State<Singup> {
  String date = "Select Date";
  TextEditingController dateController = TextEditingController();

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
                "Create\nAccount",
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
                        Expanded(child: InkWell(
                          onTap: () async{
                            final result = await showDatePicker(context: context,
                              lastDate: DateTime.now(),
                              initialDate: DateTime.now(),
                              firstDate: DateTime.now(),
                            );

                            if (result != null) {
                              final format = DateFormat("dd/MM/yyyy");

                              dateController.text = format.format(result);
                              setState(() {

                              });
                            }
                          },
                          child: AbsorbPointer(
                            child: _textfild("DOB", prefix: Icon(Icons.calendar_today), controller: dateController)
                          ),
                        )),
                        Expanded(child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Container(
                            child: Center(child: Text("hello")),
                            height: 48,
                            decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              border: Border.all(
                                width: 1,
                                color: Colors.black.withOpacity(.58)
                              )
                            ),
                          ),
                        ))
                      ],),
                      SizedBox(height: 10),
                      _textfild("Moblie no.",Num: TextInputType.number),
                      SizedBox(height: 10),
                      _textfild("Email id", Num: TextInputType.emailAddress),
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      MaterialButton(height: 40, minWidth: 160,
                        color: Color(0xff3B434D),
                        onPressed: () {},
                        child: Text("Sing up",style: TextStyle(
                          color: Colors.white,
                        ),),
                        shape: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(32),
                        )
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

_textfild(text, {Widget? prefix, TextEditingController? controller, TextInputType? Num}){
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10),
    child: TextField(
      keyboardType: Num,
      controller: controller,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(10),
        ),
          contentPadding:
          EdgeInsets.symmetric(vertical: 0, horizontal: 12),
          filled: true,
          fillColor: Colors.transparent,
          hintText: text,
          prefixIcon: prefix,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
      ),
    ),
  );
}