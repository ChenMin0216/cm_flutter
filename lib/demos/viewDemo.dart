import 'package:flutter/material.dart';
import 'package:cm_flutter/models/post.dart';

class ViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridViewBuilderDemo();
  }
}

///Mark: Demo3: GridViewBuilderDemo
class GridViewBuilderDemo extends StatelessWidget {

  Widget _gridViewBuilder(BuildContext context, int index) {
    return Container(
      child: Image.network(
          posts[index].imageUrl,
          fit: BoxFit.cover
      ),
    );
  }

  @override
  Widget build(BuildContext context) {

    return GridView.builder(
        itemCount: posts.length,
        itemBuilder: _gridViewBuilder,
        padding: EdgeInsets.all(8.0),
//        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
//            maxCrossAxisExtent: 150.0,
//            crossAxisSpacing: 8.0,
//            mainAxisSpacing: 8.0
//        )
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            crossAxisSpacing: 8.0,
            mainAxisSpacing: 8.0
        )
    );
  }
}

///Mark: Demo2: PageViewBuilderDemo
class PageViewBuilderDemo extends StatelessWidget {

  Widget _pageViewBuilder(BuildContext context, int index){
    return Stack(
      children: <Widget>[
        SizedBox.expand(
          child: Image.network(posts[index].imageUrl, fit: BoxFit.cover),
        ),
        Positioned(
          bottom: 8.0,
          left: 8.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(posts[index].title, style: TextStyle(fontWeight: FontWeight.bold)),
              Text(posts[index].author)
            ],
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        itemBuilder: _pageViewBuilder,
      itemCount: posts.length,
    );
  }
}

///Mark: Demo1: PageViewDemo
class PageViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageView(
      scrollDirection: Axis.horizontal,
      reverse: true,// 是否倒序显示，默认为false
      controller: PageController(
        initialPage: 1,//初始显示页 默认为0
        keepPage: false,// false取消回弹效果,默认为true
        viewportFraction: 0.85// 显示效果，默认占满1.0，
      ),
      onPageChanged: (currentPage) => debugPrint('Page: $currentPage'),
      children: <Widget>[
        Container(
          color: Colors.brown[900],
          alignment: Alignment(0.0, 0.0),
          child: Text(
              'ONE',
              style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold)
          ),
        ),
        Container(
          color: Colors.yellow[900],
          alignment: Alignment(0.0, 0.0),
          child: Text(
              'TWO',
              style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold)
          ),
        ),
        Container(
          color: Colors.green[900],
          alignment: Alignment(0.0, 0.0),
          child: Text(
              'THREE',
              style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold)
          ),
        )
      ],
    );
  }
}