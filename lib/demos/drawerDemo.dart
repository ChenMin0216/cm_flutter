import 'package:flutter/material.dart';

class DrawerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text('小胖纸', style: TextStyle(fontWeight: FontWeight.bold)),
            accountEmail: Text('cm87503145@163.com'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage('https://dss0.bdstatic.com/7Ls0a8Sm1A5BphGlnYG/sys/portrait/item/netdisk.1.d4cae33f.pBkdmvxtQZ8xWvvryv8P2w.jpg'),
            ),
            decoration: BoxDecoration(
              color: Colors.yellow[400],
              image: DecorationImage(
                  image: NetworkImage('https://resources.ninghao.org/images/candy-shop.jpg'),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                      Colors.yellow[400].withOpacity(0.6),
                      BlendMode.srcOver
                  )
              ),
            ),
          ),
          ListTile(
              title: Text('Message', textAlign: TextAlign.right),
              trailing: Icon(Icons.message, color: Colors.black12, size: 22.0),
              onTap: () => Navigator.pop(context)
          ),
          ListTile(
              title: Text('Favorite', textAlign: TextAlign.right),
              trailing: Icon(Icons.favorite, color: Colors.black12, size: 22.0),
              onTap: () => Navigator.pop(context)
          ),
          ListTile(
              title: Text('Settings', textAlign: TextAlign.right),
              trailing: Icon(Icons.settings, color: Colors.black12, size: 22.0),
              onTap: () => Navigator.pop(context)
          )
        ],
      ),
    );
  }

}