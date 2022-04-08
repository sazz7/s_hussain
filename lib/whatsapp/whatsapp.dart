import 'package:flutter/material.dart';
import 'package:s_hussain/whatsapp/chat_page.dart';

class WhatsApp extends StatefulWidget {
  @override
  State<WhatsApp> createState() => _WhatsAppState();
}

class _WhatsAppState extends State<WhatsApp>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final List<Widget> topTabs = <Widget>[
    Tab(icon: Icon(Icons.camera_alt),),
    Tab(text: "CHAT"),
    Tab(text: "STATUS"),
    Tab(text: "CALL"),
  ];
  @override
  void initState() {
    _tabController = TabController(length: 4,initialIndex: 1, vsync: this)
    ..addListener(() {
      setState(() {

      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Whatsapp",
      theme: ThemeData(
        //primaryColor: Color(0xff075e54),
        colorScheme: Theme.of(context).colorScheme.copyWith(
          primary: Color(0xff075e54),
          secondary: Color(0xff25d366),
        )
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("WhatsApp"),
          actions: [
            IconButton(onPressed: (){},
                icon: Icon(Icons.search)),
            IconButton(onPressed: (){},
                icon: Icon(Icons.more_vert))
          ],
          bottom: TabBar(
            controller: _tabController,
            indicatorColor: Colors.white,
            tabs: topTabs,
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: [
            Center(child: Text('Camera',style: TextStyle(
              fontSize: 20
            ),)),
            Chat(),
            Center(child: Text('Status',style: TextStyle(
                fontSize: 20
            ),)),
            Center(child: Text('Call',style: TextStyle(
                fontSize: 20
            ),)),
          ],
        ),
      ),
    );
  }
}
