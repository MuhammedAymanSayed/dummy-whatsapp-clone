import 'package:flutter/material.dart';

class Calls extends StatefulWidget {
  @override
  _CallsState createState() => _CallsState();
}

class _CallsState extends State<Calls> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add_call),
        backgroundColor: Colors.green,
      ),
      body: ListView(
        children: <Widget>[
          new Card(
            child: new FittedBox(
              child: FlatButton(
                onPressed: () {},
                child: new Row(
                  children: <Widget>[
                    new Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        new Container(
                          child: CircleAvatar(
                            radius: 30,
                            backgroundImage: AssetImage('images/ayman.jpg'),
                          ),
                          padding: EdgeInsets.fromLTRB(0, 12.5, 10, 12.5),
                        ),
                        new Container(
                            padding: EdgeInsets.fromLTRB(5, 5, 0, 5),
                            child: new Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              textDirection: TextDirection.ltr,
                              children: <Widget>[
                                new Text(
                                  'Muhammed Ayman',
                                  style: TextStyle(
                                      fontSize: 22,
                                      color: Colors.black54,
                                      fontWeight: FontWeight.w600),
                                ),
                                new Padding(padding: EdgeInsets.all(1)),
                                new Row(
                                  children: <Widget>[
                                    new Icon(
                                      Icons.call_made,
                                      color: Colors.greenAccent,
                                    ),
                                    Padding(padding: EdgeInsets.all(2.5)),
                                    new Text(
                                      '(6) Yesterday, 12:33 PM',
                                      style: TextStyle(
                                          fontSize: 16, color: Colors.grey),
                                      textDirection: TextDirection.ltr,
                                      textAlign: TextAlign.left,
                                    ),
                                  ],
                                ),
                              ],
                            )),
                        Padding(padding: EdgeInsets.only(left: 30)),
                        new IconButton(
                            icon: Icon(
                              Icons.call,
                              color: Colors.grey,
                              size: 35,
                            ),
                            onPressed: () {})
                      ],
                    ),
                  ],
                )),
            )
          )
        ],
      ),
    );
  }
}
