import 'package:flutter/material.dart';

import 'calls.dart';
import 'chat.dart';
import 'status.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _tab = <Widget>[
    Tab(
      child: Icon(Icons.camera_alt),
    ),
    Tab(
      child: new Text(
        'Chat',
        style: TextStyle(fontSize: 24),
      ),
    ),
    Tab(
      child: new Text('Status', style: TextStyle(fontSize: 24)),
    ),
    Tab(
      child: new Text('Calls', style: TextStyle(fontSize: 24)),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    const String group = 'New group';
    const String broad = 'New broadcast';
    const String web = 'WhatsApp Web';
    const String msgs = 'Starred nessages';
    const String settings = 'Settings';
    const List<String> choises = <String>[group, broad, web, msgs, settings];

    return DefaultTabController(
        length: _tab.length,
        initialIndex: 1,
        child: Scaffold(
          appBar: new AppBar(
            backgroundColor: Color(0xff075e54),
            title: new Text(
              'WhatsApp',
              style: new TextStyle(color: Colors.white, fontSize: 26),
            ),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.search),
                onPressed: () {},
              ),
              new PopupMenuButton<String>(
                color: Colors.white,
                icon: Icon(Icons.more_vert),
                onSelected: (String choice) {
                  if (choice == 'Settings') {
                  } else {}
                },
                itemBuilder: (BuildContext context) {
                  return choises.map((String choice) {
                    return new PopupMenuItem<String>(
                      value: choice,
                      child: Text(choice),
                    );
                  }).toList();
                },
              )
            ],
            bottom: TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.camera_alt),
                ),
                Tab(
                  child: new Text(
                    'Chat',
                    style: TextStyle(fontSize: 24),
                  ),
                ),
                Tab(
                  child: new FittedBox(
                    child: Text(
                      'Status',
                      style: TextStyle(fontSize: 24),
                    ),
                  ),
                ),
                Tab(
                  child: new Text(
                    'Calls',
                    style: TextStyle(fontSize: 24),
                  ),
                ),
              ],
            ),
          ),
          body: TabBarView(children: <Widget>[
            Text('Camera'),
            Chat(),
            Status(),
            Calls(),
          ]),
        ));
  }
}
