import 'package:flutter/material.dart';

class NewsFirst extends StatelessWidget {
  const NewsFirst({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 8,
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          title: new Text('今日头条'),
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

        // drawer: Text('this is a drawer'), //左边边界右滑
        // endDrawer: Text('right drawer'),//右边左滑
        // drawer: drawer(),
      ),
    );
  }
}
