import 'package:flutter/material.dart';
import 'bottom/bottomNavigation.dart';

void main() => runApp(listApp());

class listApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // 是否打开性能监控，覆盖在屏幕最上面
      showPerformanceOverlay: false,
      // 是否显示右上角的Debug标签
      debugShowCheckedModeBanner: false,
      // 是否打开显示到屏幕外位图的图层的检查面板
      checkerboardOffscreenLayers: false,
      // 是否打开栅格缓存图像的检查板
      checkerboardRasterCacheImages: false,
      // 是否显示网格
      debugShowMaterialGrid: false,
      // 是否打开覆盖图，显示框架报告的可访问性信息 显示边框
      showSemanticsDebugger: false,
      title: 'hello',

      routes: {
        //设置怎么出现的
        '/': (context) => BottomNavigation(), //设置路由的根
      },

      // theme: ThemeData.light(),
      theme: ThemeData(
        primarySwatch: Colors.red, //可以改变导航栏颜色
        highlightColor: Colors.red, //按钮点击时的颜色
        splashColor: Colors.blue, //水波纹的颜色
        accentColor: Colors.blue,
      ),
    );
  }
}
