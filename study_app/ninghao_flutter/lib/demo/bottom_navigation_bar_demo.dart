import 'package:flutter/material.dart';
class BottomNavigationBarDemo extends StatefulWidget {

  
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _BottomNavigationBarDemoState();
  }
}
class _BottomNavigationBarDemoState extends State<BottomNavigationBarDemo> {


    int _currentIndex = 0;            //见currentIndex: _currentIndex,

  void _onTapHandler (int index) {    //在这里定义onTap的回调。方法接受的一个是表示索引值的参数，类型是int,名字叫做index。
    setState(() {
      _currentIndex = index;
    });               //用这个方法，设置当前索引值，这样才会去切换这个导航栏的一个菜单项的一个激活状态。，不过，setState是StatefulWidget才有的。
  }     
//修改setState要做的事情。这里就是设置下划线currentIndex的值。

 @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BottomNavigationBar(        //BottomMavigationBarDemo(),
          //  currentIndex: 1,
          currentIndex: _currentIndex,          //进行激活，用变量表示索引值，在上面在进行定义一个变量。
          onTap: _onTapHandler,                 //切换这个激活状态，onTap代表回调。

          type: BottomNavigationBarType.fixed,
          fixedColor: Colors.blue,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.explore),
              title:Text('Explore'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.history),
              title:Text('history'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.list),
              title:Text('List'),
            ),
            BottomNavigationBarItem(            //当底部的导航栏的项目颜色为白色，当导航栏项目大于4个
              icon: Icon(Icons.person),         //导致顶部导航栏类型会发生变化。在BottomNavigationBar里面
              title:Text('My'),                 //添加type,去重新设置导航栏的类型。把它设置成默认的BottomNavigationBarType的fixed.
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.live_tv),
              title:Text('live_tv'),
              ),
          ],
        )
      ;
  }
}

       




