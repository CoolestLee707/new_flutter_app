import 'dart:ui';

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
          SizedBox(
            height: 30,
          ),
          ListTile(
            leading: Icon(
              Icons.chat_bubble_outline_outlined,
              color: Colors.green,
              size: 50,
            ),
            title: Text(
              '微信',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, color: Colors.green),
            ),
            onTap: () => {
              this.onDrawerCall!(DrawerIndex.WeChat),
              Navigator.pop(context)
            },
          ),
          SizedBox(
            height: 30,
          ),
          ListTile(
              leading: Icon(
                Icons.reorder,
                color: Colors.red,
                size: 50,
              ),
              title: Text(
                '头条',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, color: Colors.red),
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
