import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class Status extends StatefulWidget {
  @override
  _StatusState createState() => _StatusState();
}

class _StatusState extends State<Status> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: SpeedDial(
        backgroundColor: Colors.green,
        child: Icon(Icons.menu),
        children: [
          SpeedDialChild(child: Icon(Icons.camera_alt),backgroundColor: Colors.green,),
          SpeedDialChild(child: Icon(Icons.edit),backgroundColor: Colors.green,)
        ],
      ),
      body: ListView(
        children: <Widget>[
          new Card(
            child: new FlatButton(
                onPressed: () {},
                child: new Row(
                  children: <Widget>[
                    new Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        new Container(
                          child: CircleAvatar(
                            backgroundColor: Colors.green,
                            radius: 30,
                            child: Icon(Icons.person_add,color: Colors.white,),
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
                                  'My status',
                                  style: TextStyle(
                                      fontSize: 22,
                                      color: Colors.black54,
                                      fontWeight: FontWeight.w600),
                                ),
                                new Padding(padding: EdgeInsets.all(1)),
                                new Text(
                                  'Tap to add status update',
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.grey),
                                  textDirection: TextDirection.ltr,
                                  textAlign: TextAlign.left,
                                ),
                              ],
                            )),
                      ],
                    ),
                  ],
                )),
          ),
          Card(
              color: Colors.white10,
              child: Padding(
                padding: EdgeInsets.all(10),
                child: new Text(
                  'Recent updates',
                  style: TextStyle(fontSize: 16, color: Colors.black87),
                  textDirection: TextDirection.ltr,
                  textAlign: TextAlign.left,
                ),
              )),
          new Card(
            child: new FlatButton(
              onPressed: () {},
              child: new Row(
                children: <Widget>[
                  new Container(
                    child: CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage('images/ahmed.jpg'),
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
                            'Ahmed Saad',
                            style: TextStyle(
                                fontSize: 22,
                                color: Colors.black54,
                                fontWeight: FontWeight.w600),
                          ),
                          new Padding(padding: EdgeInsets.all(1)),
                          new Text(
                            '9 minutes ago',
                            style: TextStyle(fontSize: 16, color: Colors.grey),
                            textDirection: TextDirection.ltr,
                            textAlign: TextAlign.left,
                          ),
                        ],
                      ))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
