import 'package:flutter/material.dart';
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
      home: Home(),
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
        splashColor: Colors.white70
      ),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
            backgroundColor: Colors.grey[100],
            appBar: AppBar(
              leading: IconButton(
                  icon: Icon(Icons.menu),
                  tooltip: 'Navigation',
                  onPressed: () => debugPrint('Menu button is pressed')
              ),
              title: Text('Title'),
              actions: <Widget>[
                IconButton(
                    icon: Icon(Icons.search),
                    tooltip: 'Search',
                    onPressed: () => debugPrint('Search button is pressed')
                )
              ],
              elevation: 0.0,
              bottom: TabBar(
                  unselectedLabelColor: Colors.black38,
                  indicatorColor: Colors.black54,
                  indicatorSize: TabBarIndicatorSize.label,
                  indicatorWeight: 1.0,
                  tabs: <Widget>[
                    Tab(icon: Icon(Icons.directions_bike)),
                    Tab(icon: Icon(Icons.directions_boat)),
                    Tab(icon: Icon(Icons.directions_bus)),
              ]),
            ),
        body: TabBarView(
            children: <Widget>[
              Icon(Icons.directions_bike, size: 128.0, color: Colors.black12),
              Icon(Icons.directions_boat, size: 128.0, color: Colors.black12),
              Icon(Icons.directions_bus, size: 128.0, color: Colors.black12)
            ]
        )
    )
    );
  }
}


