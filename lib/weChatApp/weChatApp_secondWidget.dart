import 'package:flutter/material.dart';

class WeChatSecond extends StatefulWidget {
  WeChatSecond({Key? key}) : super(key: key);

  @override
  _WeChatSecondState createState() => _WeChatSecondState();
}

class _WeChatSecondState extends State<WeChatSecond> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('通讯录'),
        elevation: 0.0,
        backgroundColor: Colors.green,
      ),
      body: Text('2'),
    );
  }
}
