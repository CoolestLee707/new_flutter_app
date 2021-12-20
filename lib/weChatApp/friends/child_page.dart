import 'package:flutter/material.dart';

import '../../common/common.dart';

class ChildPage extends StatelessWidget {
  final String title;
  ChildPage({this.title = ""});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: GlobalThemeColor,
        title: Text(
          '$title',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Center(
        child: Text(
          '$title',
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
