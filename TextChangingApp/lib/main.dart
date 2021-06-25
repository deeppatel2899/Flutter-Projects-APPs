import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  String textHolder = "Hello ! How are you ?";

  void changeText() {
    setState(() {
      textHolder = "I hope you must be FANTASTIC !";
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Center(
          child: Column(children: <Widget>[
        Container(
            padding: EdgeInsets.fromLTRB(20,100,20,20),
            child: Text(
              '$textHolder',
              style: TextStyle(fontSize: 28),
            )),
        RaisedButton(
          onPressed: () => changeText(),
          child: Text('Press Me !'),
          textColor: Colors.white,
          color: Colors.green,
          padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
        ),
      ])),
    ));
  }
}
