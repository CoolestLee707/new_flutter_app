import 'package:flutter/material.dart';

class WeChatFour extends StatefulWidget {
  WeChatFour({Key? key}) : super(key: key);

  @override
  _WeChatFourState createState() => _WeChatFourState();
}

class _WeChatFourState extends State<WeChatFour> {
  List<String> textList = [
    'header',
    'Divider',
    '支付',
    'Divider',
    '收藏',
    '朋友圈',
    '卡包',
    '表情',
    'Divider',
    '设置'
  ];

  Map listMap = const {
    '支付': 'lib/assets/weChat/weChat_pay.png',
    '收藏': 'lib/assets/weChat/weChat_favorite.png',
    '朋友圈': 'lib/assets/weChat/weChat_pengyouquan.png',
    '卡包': 'lib/assets/weChat/weChat_kabao.png',
    '表情': 'lib/assets/weChat/weChat_smile.png',
    '设置': 'lib/assets/weChat/weChat_setting.png'
  };

  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: ListView(
          children: textList.map((title) {
            if (title == 'header') {
              return DrawerHeader(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      child: Image.network(
                        'https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=3647580866,433574712&fm=26&gp=0.jpg',
                        width: 80,
                        height: 80,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '安琪拉',
                            style: TextStyle(fontSize: 21, color: Colors.black),
                          ),
                          Text(
                            '微信号：ChuanminLee',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black45,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          Row(
                            children: [
                              ActionChip(
                                  avatar: Icon(
                                    Icons.add,
                                    color: Colors.black38,
                                  ),
                                  label: Text('状态'),
                                  backgroundColor: Colors.grey[100],
                                  labelStyle: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      fontSize: 14,
                                      color: Colors.black54),
                                  onPressed: () {}),
                              SizedBox(
                                width: 5,
                              ),
                              Chip(
                                avatar: CircleAvatar(
                                  backgroundImage: NetworkImage(
                                    'https://b-ssl.duitang.com/uploads/blog/201404/14/20140414152949_BYjee.jpeg',
                                  ),
                                ),
                                label: Text('1个朋友'),
                                backgroundColor: Colors.white30,
                                labelStyle: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 14,
                                    color: Colors.black54),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Icon(
                      Icons.keyboard_arrow_right_sharp,
                      size: 30,
                      color: Colors.black54,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                  ],
                ),
                margin: EdgeInsets.only(bottom: 20),
                padding: EdgeInsets.fromLTRB(20, 40, 10, 0),
              );
            }
            if (title == 'Divider') {
              return Container(
                height: 10,
                color: Colors.grey[100],
              );
            }
            return ListItem(
              title: title,
              icon: listMap[title],
            );
          }).toList(),
        ),
      ),
    );
  }
}

// listview的瓦片ListTile,并传值了title和点击后跳转的widget
class ListItem extends StatelessWidget {
  final String title;
  final String icon;
  // final Widget page;

  //构造函数
  ListItem({
    required this.title,
    required this.icon,
    // this.page,
  });
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(
        icon,
        width: 25,
        height: 25,
      ),
      title: Text(title),
      trailing: Icon(
        Icons.keyboard_arrow_right_sharp,
        size: 30,
        color: Colors.black54,
      ),
      horizontalTitleGap: 5.0,
      // onTap: () => Navigator.push(
      //     context, MaterialPageRoute(builder: (context) => page)),
    );
  }
}
