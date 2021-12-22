import 'package:flutter/material.dart';
import '../weChatApp/model/post.dart';

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
              onPressed: () => debugPrint('Search button is pressed'),
            )
          ],
          backgroundColor: Colors.red,
          elevation: 0.0,
          bottom: TabBar(
            isScrollable: true,
            unselectedLabelColor: Colors.black45, //
            labelColor: Colors.yellow,
            indicatorColor: Colors.yellowAccent, //线的颜色
            indicatorSize: TabBarIndicatorSize.label, //线的长度
            indicatorWeight: 3.0, //线的粗细
            unselectedLabelStyle: TextStyle(fontSize: 16),
            labelStyle: TextStyle(fontSize: 18),
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
            Echo(),
            Echo(),
            Echo(),
            Echo(),
            Echo(),
            Echo(),
            Echo(),
            Echo(),
          ],
        ),

        // drawer: Text('this is a drawer'), //左边边界右滑
        // endDrawer: Text('right drawer'),//右边左滑
        // drawer: drawer(),
      ),
    );
  }
}

class Echo extends StatelessWidget {
  const Echo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: ListView(
        children: posts.map((post) {
          return Card(
            child: Column(
              children: <Widget>[
                AspectRatio(
                  aspectRatio: 16 / 9,
                  // ClipRRect给他的孩子裁剪圆角
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(4.0),
                      topRight: Radius.circular(4.0),
                    ),
                    child: Image.network(
                      post.imageUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(post.imageUrl),
                  ),
                  title: Text(post.title),
                  subtitle: Text(post.auther),
                ),
                Container(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    post.description,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                // ButtonTheme.bar(
                //   child: ButtonBar(
                //     children: <Widget>[
                //       FlatButton(
                //         child: Text(
                //           'Like'.toUpperCase(),
                //           style: TextStyle(color: Colors.red),
                //         ),
                //         onPressed: () {},
                //       ),
                //       FlatButton(
                //         child: Text(
                //           'read'.toUpperCase(),
                //           style: TextStyle(color: Colors.blue),
                //         ),
                //         onPressed: () {},
                //       ),
                //       FlatButton(
                //         child: Text(
                //           'Like'.toUpperCase(),
                //           style: TextStyle(color: Colors.green),
                //         ),
                //         onPressed: () {},
                //       ),
                //     ],
                //   ),
                // ),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}
