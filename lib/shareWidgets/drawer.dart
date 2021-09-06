import 'package:flutter/material.dart';

enum DrawerIndex {
  WeChat,
  NewsApp,
}

class drawer extends StatelessWidget {
  const drawer({
    Key? key,
    this.onDrawerCall,
  }) : super(key: key);

  final Function(DrawerIndex)? onDrawerCall;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 83.0),
        children: <Widget>[
          DrawerHeader(
            child: Text(
              'header'.toUpperCase(),
              style: TextStyle(fontSize: 30.0, color: Colors.yellow),
            ),
            decoration: BoxDecoration(
              color: Colors.black,
            ),
          ),
          ListTile(
            leading: Icon(Icons.supervised_user_circle),
            title: Text(
              'weChat',
              textAlign: TextAlign.center,
            ),
            trailing: Icon(
              Icons.supervised_user_circle,
              color: Colors.green,
              size: 30.0,
            ),
            onTap: () => {
              this.onDrawerCall!(DrawerIndex.WeChat),
              Navigator.pop(context)
            },
          ),
          ListTile(
              leading: Icon(Icons.favorite),
              title: Text(
                'newsApp',
                textAlign: TextAlign.center,
              ),
              trailing: Icon(
                Icons.favorite,
                color: Colors.red,
                size: 30.0,
              ),
              onTap: () => {
                    this.onDrawerCall!(DrawerIndex.NewsApp),
                    Navigator.pop(context)
                  }),
        ],
      ),
    );
  }
}
