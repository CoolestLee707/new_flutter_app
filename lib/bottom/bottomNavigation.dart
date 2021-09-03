import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {
  BottomNavigation({Key? key}) : super(key: key);

  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _currentIndex = 0;
  List<Widget> list = [];

  void initState() {
    // ..谁用完这个方法还返回谁，就可以继续使用
    list
      ..add(OneWidgetDemo())
      ..add(TwoWidgetDemo())
      ..add(ThreeWidgetDemo())
      ..add(FourWidgetDemo());
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
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            fixedColor: Colors.red, //
            unselectedItemColor: Colors.black54,
            currentIndex: _currentIndex,
            onTap: _onTapHandler, //点击会调用这个方法去重新渲染
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.new_label_sharp),
                label: '新闻',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.video_camera_back),
                label: '视频',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.list),
                label: '列表',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.filter),
                label: '我的',
              ),
            ]));
  }
}

class OneWidgetDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 8,
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          title: new Text('one'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              tooltip: 'Search',
              // onPressed: () => debugPrint('Search button is pressed'),
              onPressed: () => Navigator.pushNamed(context, '/mdc'),
            )
          ],
          elevation: 0.0,
          bottom: TabBar(
            isScrollable: true,
            unselectedLabelColor: Colors.black54, //
            labelColor: Colors.yellow,
            indicatorColor: Colors.yellowAccent, //线的颜色
            indicatorSize: TabBarIndicatorSize.label, //线的长度
            indicatorWeight: 3.0, //线的粗细
            tabs: <Widget>[
              Tab(
                text: '关注',
              ),
              Tab(
                text: '推荐',
              ),
              Tab(
                text: '本地',
              ),
              Tab(
                text: '热榜',
              ),
              Tab(
                text: '财经',
              ),
              Tab(
                text: '抗疫',
              ),
              Tab(
                text: '股票',
              ),
              Tab(
                text: '大学',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Text('555'),
            Text('555'),
            Text('555'),
            Text('555'),
            Text('555'),
            Text('555'),
            Text('555'),
            Text('555'),
          ],
        ),

        drawer: Text('this is a drawer'), //左边边界右滑
        // endDrawer: Text('right drawer'),//右边左滑
        // drawer: drawerDemo(),
      ),
    );
  }
}

class TwoWidgetDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TwoWidgetDemo'),
        elevation: 0.0,
      ),
      body: Center(
        child: Text('2'),
      ),
    );
  }
}

class ThreeWidgetDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ThreeWidgetDemo'),
        elevation: 0.0,
      ),
      body: Text('555'),
    );
  }
}

class FourWidgetDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FourWidgetDemo'),
        elevation: 0.0,
      ),
      body: Center(
        child: Text('4'),
      ),
    );
  }
}
