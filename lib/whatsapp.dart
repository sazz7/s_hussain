import 'package:flutter/material.dart';

class WhatsApp extends StatelessWidget {
  const WhatsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Row(children: [
            Padding(
              padding: const EdgeInsets.only(top: 40.0,left: 15.0),
              child: Text("Edit",style: TextStyle(color: Colors.blue,fontSize: 18),),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40.0,left: 270.0),
              child: Icon(Icons.edit,color: Colors.blue,),
            ),
          ],),
          Padding(
            padding: const EdgeInsets.only(left: 15.0,top: 10.0),
            child: Text("Chats",style: TextStyle(fontSize: 37,fontWeight: FontWeight.bold),),
          ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: TextFormField(
                decoration: InputDecoration(
                  filled: true,
                  contentPadding: const EdgeInsets.symmetric(vertical: 0),
                  fillColor: Colors.grey[200],
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Search',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  )
                ),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    _circle(ntext: "Jane Whitman",image: AssetImage("assets/home.jpg")),
                    _circle(ntext: "Elon Musk",image: NetworkImage("https://www.businessinsider.in/thumb/msid-87561040,width-700,resizemode-4,imgsize-455870/tech/news/elon-musk-proposes-selling-10-of-his-tesla-stock-in-a-twitter-poll/img6171279833f4b300189ad407.jpg")),
                    _circle(ntext: "Lunch Group",image: AssetImage("assets/register.png")),
                    _circle(ntext: "Jon Pearson",image: NetworkImage("https://www.dmarge.com/wp-content/uploads/2021/01/dwayne-the-rock-.jpg")),
                    _circle(ntext: "Alice",image: NetworkImage("https://www.harleytherapy.co.uk/counselling/wp-content/uploads/16297800391_5c6e812832.jpg")),
                    _circle(ntext: "Alicia Gracia",image: NetworkImage("https://www.masslive.com/resizer/xVHY0q6Qkr7dEpIxneVYqfNoUwQ=/800x0/smart/cloudfront-us-east-1.images.arcpublishing.com/advancelocal/W5HI6Y4DINDTNP76R6CLA5IWRU.jpeg")),
                    _circle(ntext: "Jane Whvitman",image: AssetImage("assets/home.jpg")),
                    _circle(ntext: "Jane Whitman",image: AssetImage("assets/home.jpg")),
                    _circle(ntext: "Jane Whitman",icon: Icons.call),
                  ],
                ),
              ),
            ),
          ],),
      ),
    );
  }
}

_circle({required String ntext,ImageProvider? image,IconData? icon}){
  return Padding(
    padding: const EdgeInsets.only(left: 10.0,top: 10),
    child: Row(children: [
      CircleAvatar(radius: 30,
        backgroundImage: image,
        child: Icon(icon),
        backgroundColor: Colors.grey,),
      Padding(
        padding: const EdgeInsets.only(left: 15.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Text(ntext,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
          Text("chat"),
        ],),
      )
    ],)
  );
}