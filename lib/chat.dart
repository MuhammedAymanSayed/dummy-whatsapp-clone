import 'package:flutter/material.dart';

class Chat extends StatefulWidget {
  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
      children: <Widget>[
        new Card(
          child:  new FlatButton(
          onPressed: (){Navigator.of(context).pushNamed('/Privatetext');},
          child: new Row(
            children: <Widget>[
              new Container(
                child: CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage('images/ayman.jpg'),
                ),
                padding: EdgeInsets.fromLTRB(0,12.5,10,12.5),
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(5, 5, 0, 5),
                child: new Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  textDirection: TextDirection.ltr,
                  children: <Widget>[
                    new Text('Muhammed Ayman',style: TextStyle(fontSize: 22,color: Colors.black54,fontWeight: FontWeight.w600),),
                    new Padding(padding: EdgeInsets.all(1)),
                    new Row(
                      children: <Widget>[
                        new Icon(Icons.done_all,color: Colors.blueAccent,),
                        Padding(padding: EdgeInsets.all(2.5)),
                        new Text('Last Text',style: TextStyle(fontSize: 16,color: Colors.grey),textDirection: TextDirection.ltr,textAlign: TextAlign.left,),
                      ],
                    )
                  ],
                )
                )
            ],
          ),
        ),
        )
      ],
    ),
    floatingActionButton: FloatingActionButton(
            onPressed: () {},
            child: Icon(Icons.message),
            backgroundColor: Colors.green,
          ),
    );
  }
}