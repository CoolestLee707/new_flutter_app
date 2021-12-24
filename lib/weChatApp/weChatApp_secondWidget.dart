import 'package:flutter/material.dart';
import './friends/friends_page.dart';

class WeChatSecond extends StatefulWidget {
  WeChatSecond({Key? key}) : super(key: key);

  @override
  _WeChatSecondState createState() => _WeChatSecondState();
}

class _WeChatSecondState extends State<WeChatSecond> {
  @override
  Widget build(BuildContext context) {
    return FriendsPage();
  }
}
