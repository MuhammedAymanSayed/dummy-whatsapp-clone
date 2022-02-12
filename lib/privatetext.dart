import 'package:flutter/material.dart';

class Privatetext extends StatefulWidget {
  @override
  _PrivatetextState createState() => _PrivatetextState();
}

class _PrivatetextState extends State<Privatetext> {
  final GlobalKey<ScaffoldState> scaffoldState = new GlobalKey<ScaffoldState>();

  _settext(String value) {
    setState(() {
      _s = value;
    });
  }

  String _s = '';
  String _a = 'hi dude';
  List<Widget> _xlist = [];
  static const String a = 'View contact';
  static const String b = 'Media, links and docs';
  static const String c = 'Search';
  static const String d = 'Mute notification';
  static const String e = 'Wallpaper';
  static const List<String> choises = <String>[a, b, c, d, e];
  TextEditingController _textcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Widget _message() {
      return Padding(
        padding: EdgeInsets.all(5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      blurRadius: .5,
                      spreadRadius: 1.0,
                      color: Colors.black.withOpacity(.12))
                ],
                color: Colors.green,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(5.0),
                  bottomLeft: Radius.circular(10.0),
                  bottomRight: Radius.circular(5.0),
                ),
              ),
              child: Stack(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(5, 5, 50, 5),
                    child: Text(
                      _s,
                      style: TextStyle(color: Colors.black54, fontSize: 20),
                    ),
                  ),
                  Positioned(
                      bottom: 0.0,
                      right: 0.0,
                      child: Padding(
                        padding: EdgeInsets.all(5),
                        child: Text('11:15 AM',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 10.0,
                            )),
                      ))
                ],
              ),
            )
          ],
        ),
      );
    }

    Widget _inmessage() {
      return Padding(
        padding: EdgeInsets.all(5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      blurRadius: .5,
                      spreadRadius: 1.0,
                      color: Colors.black.withOpacity(.12))
                ],
                color: Colors.white70,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(5.0),
                  bottomLeft: Radius.circular(5.0),
                  bottomRight: Radius.circular(10.0),
                ),
              ),
              child: Stack(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(5, 5, 50, 5),
                    child: Text(
                      _a,
                      style: TextStyle(color: Colors.black54, fontSize: 20),
                    ),
                  ),
                  Positioned(
                      bottom: 0.0,
                      right: 0.0,
                      child: Padding(
                        padding: EdgeInsets.all(5),
                        child: Text('11:15 AM',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 10.0,
                            )),
                      ))
                ],
              ),
            )
          ],
        ),
      );
    }

    return Scaffold(
        backgroundColor: Colors.greenAccent[100],
        key: scaffoldState,
        appBar: AppBar(
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.videocam),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.call),
              onPressed: () {},
            ),
            new PopupMenuButton<String>(
              color: Colors.white,
              icon: Icon(Icons.more_vert),
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
          title: new Text(
            'Muhammed Ayman',
            style: TextStyle(
              fontSize: 18
            ),
            ),
        ),
        body: Container(
          padding: EdgeInsets.only(bottom:67.5),
          child: ListView(children: _xlist.toList()),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: Stack(
          alignment: Alignment.centerRight,
          children: [
            Container(
                padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                margin: EdgeInsets.only(left: 5, right: 60),
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50)),
                child: Row(
                  children: [
                    IconButton(
                      color: Colors.grey,
                      onPressed: () {},
                      icon: Icon(
                        Icons.insert_emoticon,
                      ),
                    ),
                    Flexible(
                      child: TextFormField(
                        maxLines: 1,
                        minLines: 1,
                        onChanged: _settext,
                        controller: _textcontroller,
                        textInputAction: TextInputAction.send,
                        style: TextStyle(fontSize: 24, color: Colors.black54),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 5),
                          hintText: 'Enter Your Message',
                          hintStyle: TextStyle(fontSize: 16),
                        ),
                      ),
                    ),
                    IconButton(
                      color: Colors.white,
                      onPressed: () {},
                      icon: Icon(
                        Icons.attachment,
                        color: Colors.grey,
                      ),
                    ),
                    IconButton(
                      padding: EdgeInsets.zero,
                      onPressed: () {},
                      icon: Icon(
                        Icons.camera_alt,
                        color: Colors.grey,
                      ),
                    )
                  ],
                )),
            Padding(
              padding: EdgeInsets.only(right: 5),
              child: CircleAvatar(
                radius: 25,
                backgroundColor: Colors.white,
                child: IconButton(
                    icon: Icon(
                      Icons.send,
                      color: Colors.grey,
                    ),
                    onPressed: () {
                      setState(() {
                        _xlist.add(_message());
                        _xlist.add(_inmessage());
                        _s = '';
                      });
                      _textcontroller.clear();
                    }),
              ),
            )
          ],
        ),
        );
  }
}
/*Row(
                children: <Widget>[
                  Container(
                    height: 50,
                    width: 300,
                    child: Card(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Icon(Icons.tag_faces),
                          Center(
                            child: TextField(
                              controller: _textcontroller,
                              textInputAction: TextInputAction.send,
                              onChanged: _settext,
                              maxLines: 1,
                              minLines: 1,
                              decoration: InputDecoration(
                                  contentPadding:
                                      EdgeInsets.fromLTRB(0, 5, 0, 7.5),
                                  hintText: 'Enter Your Message'),
                            ),
                          )
                        ],
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                      ),
                    ),
                  ),
                  CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.green,
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.send,
                      ),
                    ),
                  ),
                ],
              )*/
// Row(
//   mainAxisSize: MainAxisSize.min,
//   children: <Widget>[
//     Row(
//       mainAxisSize: MainAxisSize.min,
//       children: <Widget>[
//         Container(
//           height: 50,
//           child: Card(
//             color: Colors.white,
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.all(Radius.circular(30)),
//             ),
//             child: Row(
//               mainAxisSize: MainAxisSize.max,
//               children: <Widget>[
//                 Container(
//                   child: TextFormField(
//                   decoration: InputDecoration(
//                     prefix: Padding(
//                   padding: EdgeInsets.all(2.5),
//                   child: Icon(
//                     Icons.insert_emoticon,
//                     size: 30,
//                     color: Colors.grey,
//                   ),
//                 ),
//                 suffix: Row(
//                   children: [
//                     Padding(
//                   padding: EdgeInsets.all(2.5),
//                   child: Icon(
//                     Icons.attachment,
//                     size: 30,
//                     color: Colors.grey,
//                   ),
//                 ),
//                 Padding(
//                   padding: EdgeInsets.all(2.5),
//                   child: Icon(
//                     Icons.camera_alt,
//                     size: 30,
//                     color: Colors.grey,
//                   ),
//                 ),
//                   ],
//                 )
//                   ),
//                 ),width: 500),
//                 // FittedBox(
//                 //   //width: 200,
//                 //   child: TextField(
//                 //     onChanged: _settext,
//                 //     controller: _textcontroller,
//                 //     style: TextStyle(fontSize: 20),
//                 //     decoration: InputDecoration(
//                 //         hintText: 'Type a message',
//                 //         contentPadding:
//                 //             EdgeInsets.fromLTRB(2.5, 0, 2.5, 2.5)),
//                 //   ),
//                 // ),

//               ],
//             ),
//           ),
//         ),
//       ],
//     ),
//     CircleAvatar(
//       radius: 22.5,
//       backgroundColor: Colors.green,
//       child: IconButton(
//         color: Colors.white,
//         onPressed: () {
//           setState(() {
//             _xlist.add(_message());
//             _xlist.add(_inmessage());
//             _s = '';
//           });
//           _textcontroller.clear();
//         },
//         icon: Icon(
//           Icons.send,
//         ),
//       ),
//     ),
//   ],
// ),
