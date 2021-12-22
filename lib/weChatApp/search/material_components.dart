import 'package:flutter/material.dart';
import '../demos/button_demo.dart';
import '../demos/floating_action_button_demo.dart';
import '../demos/popup_menu_button_demo.dart';
import '../demos/switch_demo.dart';
import '../demos/slider_demo.dart';
import '../demos/datetime_demo.dart';
import '../demos/simple_dialog_demo.dart';
import '../demos/alert_dialog_demo.dart';
import '../demos/snack_bar_demo.dart';
import '../demos/chip_demo.dart';
import '../demos/card_demo.dart';
import '../animation/animation_demo.dart';

class MaterialComponents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListItem(
          title: 'ButtonDemo---按钮集合',
          page: ButtonDemo(),
        ),
        ListItem(
          title: 'FloatingActionButton---悬浮按钮',
          page: FloatingActionButtonDemo(),
        ),
        ListItem(
          title: 'PopupMenuButton--点击弹出按钮列表',
          page: PopupMenuButtonDemo(),
        ),
        // 创建用户输入相关的小部件的演示页面---复选框
        ListItem(
          title: 'SwitchDemo--开关',
          page: SwitchDemo(),
        ),

        ListItem(
          title: 'SliderDemo--滑动选择器',
          page: SliderDemo(),
        ),

        ListItem(
          title: 'DateTimeDemo--显示格式化日期，弹出时间选择器，第三方包使用',
          page: DateTimeDemo(),
        ),

        ListItem(
          title: 'SimpleDialogDemo--显示对话框',
          page: SimpleDialogDemo(),
        ),

        ListItem(
          title: 'AlertDialogDemo--提示对话框',
          page: AlertDialogDemo(),
        ),
        ListItem(
          title: 'SnackBarDemo--操作提示栏',
          page: SnackBarDemo(),
        ),
        ListItem(
          title: 'ChipDemo--小碎片',
          page: ChipDemo(),
        ),
        ListItem(
          title: 'CardDemo--卡片',
          page: CardDemo(),
        ),
        ListItem(
          title: 'AnimationDemo--动画',
          page: AnimationDemo(),
        ),
      ],
    );
  }
}

// listview的瓦片ListTile,并传值了title和点击后跳转的widget
class ListItem extends StatelessWidget {
  final String title;
  final Widget page;

  //构造函数
  ListItem({
    required this.title,
    required this.page,
  });
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),

      // 1、
      // onTap: () {
      //   Navigator.of(context).push(
      //     MaterialPageRoute(
      //       builder: (BuildContext context) => page,
      //     ),
      //   );
      // },

      //2
      onTap: () => Navigator.push(
          context, MaterialPageRoute(builder: (context) => page)),
    );
  }
}

//模板
// return Scaffold(
//       appBar: AppBar(
//         title: Text("CheckboxDemo"),
//         elevation: 0.0,
//       ),
//       body: Container(
//         padding: EdgeInsets.all(16.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: <Widget>[

//               ],
//             )
//           ],
//         ),
//       ),
//     );
