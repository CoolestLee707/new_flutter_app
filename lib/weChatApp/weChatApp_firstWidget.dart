import 'package:flutter/material.dart';
import './chat_page.dart';

class WeChatFirst extends StatelessWidget {
  const WeChatFirst({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChatPage();
    return Scaffold(
      appBar: AppBar(
        title: Text('微信'),
        elevation: 0.0,
        backgroundColor: Colors.green,
      ),
      body: ChatPage(),
    );
  }
}
