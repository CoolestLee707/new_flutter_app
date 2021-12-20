import 'package:flutter/material.dart';
import '../../common/common.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: GlobalThemeColor,
        elevation: 0.0,
        title: const Text(
          '微信',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 5),
            child: PopupMenuButton(
                color: const Color.fromRGBO(1, 1, 1, 0.5),
                offset: const Offset(0, 60),
                child: Image.asset(
                  'lib/assets/weChat/weChat_add.png',
                  width: 25,
                ),
                itemBuilder: (BuildContext context) {
                  return <PopupMenuItem<String>>[
                    PopupMenuItem(
                        child: _popupMenuItem(
                            "lib/assets/weChat/weChat_pay.png", "发起群聊")),
                    PopupMenuItem(
                        child: _popupMenuItem(
                            "lib/assets/weChat/weChat_pay.png", "添加好友")),
                    PopupMenuItem(
                        child: _popupMenuItem(
                            "lib/assets/weChat/weChat_pay.png", "扫一扫")),
                    PopupMenuItem(
                        child: _popupMenuItem(
                            "lib/assets/weChat/weChat_pay.png", "收付款")),
                  ];
                }),
          )
        ],
      ),
      // ignore: avoid_unnecessary_containers
      body: Container(
        child: ListView.builder(
          itemCount: 40,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
                title: const Text("李老师"),
                subtitle: Container(
                  alignment: Alignment.bottomCenter,
                  height: 25,
                  padding: const EdgeInsets.only(right: 5),
                  child: const Text(
                    "在吗？有紧急事情需要你处理，请速速回来！",
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                //头像
                leading: Container(
                  width: 45, height: 45, //宽高
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12), //圆角
                      image: const DecorationImage(
                          image:
                              AssetImage("lib/assets/weChat/weChat_pay.png"))),
                ));
          },
        ),
      ),
    );
  }

  Widget _popupMenuItem(String imgAss, String title) {
    return Row(
      children: [
        Image(
          image: AssetImage(imgAss),
          width: 25,
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          title,
          style: const TextStyle(fontSize: 18, color: Colors.white),
        )
      ],
    );
  }
}
