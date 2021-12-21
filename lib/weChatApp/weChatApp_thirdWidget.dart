import 'package:flutter/material.dart';
import 'search/material_components.dart';

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
      body: MaterialComponents(),
      // body: Echo(
      //   text: '你猜',
      //   backgroundColor: Colors.red,
      // ),
    );
  }
}

class Echo extends StatelessWidget {
  const Echo({
    Key? key,
    required this.text,
    this.backgroundColor = Colors.grey, //默认为灰色
  }) : super(key: key);

  final String text;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: backgroundColor,
        child: Text(text),
      ),
    );
  }
}
