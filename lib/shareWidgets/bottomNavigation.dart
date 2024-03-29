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
  double iconNormalWH = 25.0;
  double iconSelectedWH = 30.0;
  int _currentIndex = 0;
  Color? themeColor;
  DrawerIndex? drawerIndex = DrawerIndex.WeChat;
  Widget? screenView;
  List<Widget> list = [];
  List<String> textList = [];
  List<String> iconsList = [];
  List<String> iconsSelectedList = [];

  void initState() {
    // ..谁用完这个方法还返回谁，就可以继续使用
    list
      ..add(WeChatFirst())
      ..add(WeChatSecond())
      ..add(WeChatThird())
      ..add(WeChatFour());
    textList
      ..add('微信')
      ..add('通讯录')
      ..add('发现')
      ..add('我的');
    iconsList
      ..add('lib/assets/weChat/wechat1_normal.png')
      ..add('lib/assets/weChat/wechat2_normal.png')
      ..add('lib/assets/weChat/wechat3_normal.png')
      ..add('lib/assets/weChat/wechat4_normal.png');
    iconsSelectedList
      ..add('lib/assets/weChat/wechat1_selected.png')
      ..add('lib/assets/weChat/wechat2_selected.png')
      ..add('lib/assets/weChat/wechat3_selected.png')
      ..add('lib/assets/weChat/wechat4_selected.png');

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
            unselectedItemColor: Colors.black45,
            currentIndex: _currentIndex,
            onTap: _onTapHandler, //点击会调用这个方法去重新渲染
            items: [
              BottomNavigationBarItem(
                icon: Image.asset(
                  _currentIndex == 0 ? iconsSelectedList[0] : iconsList[0],
                  width: _currentIndex == 0 ? iconSelectedWH : iconNormalWH,
                  height: _currentIndex == 0 ? iconSelectedWH : iconNormalWH,
                ),
                label: textList[0],
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  _currentIndex == 1 ? iconsSelectedList[1] : iconsList[1],
                  width: _currentIndex == 1 ? iconSelectedWH : iconNormalWH,
                  height: _currentIndex == 1 ? iconSelectedWH : iconNormalWH,
                ),
                label: textList[1],
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  _currentIndex == 2 ? iconsSelectedList[2] : iconsList[2],
                  width: _currentIndex == 2 ? iconSelectedWH : iconNormalWH,
                  height: _currentIndex == 2 ? iconSelectedWH : iconNormalWH,
                ),
                label: textList[2],
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  _currentIndex == 3 ? iconsSelectedList[3] : iconsList[3],
                  width: _currentIndex == 3 ? iconSelectedWH : iconNormalWH,
                  height: _currentIndex == 3 ? iconSelectedWH : iconNormalWH,
                ),
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
          iconsList = [
            'lib/assets/weChat/wechat1_normal.png',
            'lib/assets/weChat/wechat2_normal.png',
            'lib/assets/weChat/wechat3_normal.png',
            'lib/assets/weChat/wechat4_normal.png'
          ];
          iconsSelectedList = [
            'lib/assets/weChat/wechat1_selected.png',
            'lib/assets/weChat/wechat2_selected.png',
            'lib/assets/weChat/wechat3_selected.png',
            'lib/assets/weChat/wechat4_selected.png'
          ];
          themeColor = Color.fromRGBO(0, 217, 103, 1);
        });
      } else if (drawerIndex == DrawerIndex.NewsApp) {
        setState(() {
          list = [NewsFirst(), listViewDemo(), NewsThird(), SliverDemo()];
          textList = ['头条', '视频', '放映厅', '我的'];
          iconsList = [
            'lib/assets/weChat/news1_normal.png',
            'lib/assets/weChat/news2_normal.png',
            'lib/assets/weChat/news3_normal.png',
            'lib/assets/weChat/news4_normal.png',
          ];
          iconsSelectedList = [
            'lib/assets/weChat/news1_selected.png',
            'lib/assets/weChat/news2_selected.png',
            'lib/assets/weChat/news3_selected.png',
            'lib/assets/weChat/news4_selected.png',
          ];
          themeColor = Colors.red;
        });
      } else {
        //do in your way......
      }
    }
  }
}
