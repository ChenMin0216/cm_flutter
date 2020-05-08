import 'package:flutter/material.dart';
import 'demos/listViewDemo.dart';
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ListViewDemo(),
      theme: ThemeData(
        primarySwatch: Colors.yellow
      ),
    );
  }
}

//class Home extends StatelessWidget {
//
//
//}


