import 'package:flutter/material.dart';

class WeChatThird extends StatelessWidget {
  const WeChatThird({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('发现'),
        elevation: 0.0,
        backgroundColor: Colors.green,
      ),
      body: Text('3'),
    );
  }
}
