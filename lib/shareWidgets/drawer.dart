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
        padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
        children: <Widget>[
          DrawerHeader(
            child: Text(
              '选择App'.toUpperCase(),
              style: TextStyle(fontSize: 30.0, color: Colors.yellow),
            ),
            decoration: BoxDecoration(
              color: Colors.blueGrey,
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.supervised_user_circle,
              color: Colors.green,
              size: 50,
            ),
            title: Text(
              'weChat',
              textAlign: TextAlign.center,
            ),
            onTap: () => {
              this.onDrawerCall!(DrawerIndex.WeChat),
              Navigator.pop(context)
            },
          ),
          ListTile(
              leading: Icon(
                Icons.book,
                color: Colors.red,
                size: 50,
              ),
              title: Text(
                'newsApp',
                textAlign: TextAlign.center,
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
