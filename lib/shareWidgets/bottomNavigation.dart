import 'package:flutter/material.dart';
import './drawer.dart';
import '../newsApp/news_app_first.dart';
import '../newsApp/news_app_second.dart';
import '../newsApp/news_app_third.dart';
import '../newsApp/news_app_four.dart';
import '../weChatApp/weChatApp_firstWidget.dart';
import '../weChatApp/weChatApp_secondWidget.dart';
import '../weChatApp/weChatApp_thirdWidget.dart';
import '../weChatApp/weChatApp_fourWidget.dart';

class BottomNavigation extends StatefulWidget {
  BottomNavigation({Key? key}) : super(key: key);

  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _currentIndex = 0;
  Color? themeColor;
  DrawerIndex? drawerIndex;
  Widget? screenView;
  List<Widget> list = [];
  List<String> textList = [];

  void initState() {
    // ..谁用完这个方法还返回谁，就可以继续使用
    list
      ..add(NewsFirst())
      ..add(NewsSecond())
      ..add(NewsThird())
      ..add(NewsFour());
    textList..add('头条')..add('视频')..add('放映厅')..add('我的');
    themeColor = Colors.red;
    super.initState();
  }

  void _onTapHandler(int index) {
    setState(() {
      //刷新状态
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: list[_currentIndex],
        drawer: drawer(
          onDrawerCall: (DrawerIndex drawerIndexdata) {
            changeIndex(drawerIndexdata);
          },
        ), //左边边界右滑
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            fixedColor: themeColor, //
            unselectedItemColor: Colors.black54,
            currentIndex: _currentIndex,
            onTap: _onTapHandler, //点击会调用这个方法去重新渲染
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.new_label_sharp),
                label: textList[0],
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.video_camera_back),
                label: textList[1],
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.list),
                label: textList[2],
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.filter),
                label: textList[3],
              ),
            ]));
  }

  void changeIndex(DrawerIndex drawerIndexdata) {
    if (drawerIndex != drawerIndexdata) {
      drawerIndex = drawerIndexdata;
      if (drawerIndex == DrawerIndex.WeChat) {
        setState(() {
          list = [WeChatFirst(), WeChatSecond(), WeChatThird(), WeChatFour()];
          textList = ['微信', '通讯录', '发现', '我的'];
          themeColor = Colors.green;
        });
      } else if (drawerIndex == DrawerIndex.NewsApp) {
        setState(() {
          list = [NewsFirst(), NewsSecond(), NewsThird(), NewsFour()];
          textList = ['头条', '视频', '放映厅', '我的'];
          themeColor = Colors.red;
        });
      } else {
        //do in your way......
      }
    }
  }
}
