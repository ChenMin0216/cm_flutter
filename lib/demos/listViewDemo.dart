import 'package:flutter/material.dart';
import 'package:cm_flutter/models/post.dart';

class ListViewDemo extends StatelessWidget {

  Widget _listItemBuilder(BuildContext context, int index) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.all(10.0),
      child: Column(
        children: <Widget>[
          Image.network(posts[index].imageUrl),
          SizedBox(height: 18.0),
          Text(
            posts[index].title,
            style: Theme.of(context).textTheme.headline6,
          ),
          Text(
            posts[index].author,
            style: Theme.of(context).textTheme.headline6,
          ),
          SizedBox(height: 18.0)
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          leading: IconButton(
              icon: Icon(Icons.menu),
              tooltip: 'Navigation',
              onPressed: () => debugPrint('Menu button is pressed')
          ),
          title: Text('Hello'),
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.search),
                tooltip: 'Search',
                onPressed: () => debugPrint('Search button is pressed')
            )
          ],
          elevation: 0.0,
        ),
        body: ListView.builder(itemCount: posts.length, itemBuilder: _listItemBuilder)
    );
  }
}