import 'package:flutter/material.dart';
 //import './model/post.dart';
// import './demo/hello_demo.dart';


//import './demo/listview_demo.dart';


import './demo/bottom_navigation_bar_demo.dart';
import './demo/listview_demo.dart';














void main() => runApp(MyApp());                         //void main() => runApp(App());  原著无APP，所以会导致test文件中的widget_test.dart报错。

class MyApp extends StatelessWidget{                    //class App extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,//ture,
      home: Home(),
      theme:ThemeData(
        primarySwatch:Colors.yellow,
        highlightColor:Color.fromRGBO(255, 255, 255, 0.5),
        splashColor: Colors.white70     //水波纹颜色
      )
    );
  }
}//Text(posts[index].title)

// class Home extends StatelessWidget{

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey[100],
//         appBar: AppBar(
//           leading: IconButton(        //图标按钮
//             icon:Icon(Icons.menu),
//             tooltip:'Navigration',
//             onPressed:() => debugPrint('Navigration button is pressed'),  // null,
//           ),
//           title:Text('NINGHAO'),
//           actions: <Widget>[
//             IconButton(
//             icon:Icon(Icons.search),
//             tooltip:'Search',
//             onPressed:() => debugPrint('Search button is pressed'),
//           ),
//           ],
//           elevation: 0.0,  //appBar标签阴影部分区域
//         ),
//         body: null,              //ListViewDemo(),
//       );
//   }
// }





class Home extends StatelessWidget{       //见currentIndex: _currentIndex,切换这个激活状态我们需要用到onTap属性。
  // int _currentIndex = 0;            //见currentIndex: _currentIndex,

  // void _onTapHandler (int index) {    //在这里定义onTap的回调。方法接受的一个是表示索引值的参数，类型是int,名字叫做index。
  //   setState();               //用这个方法，设置当前索引值，这样才会去切换这个导航栏的一个菜单项的一个激活状态。，不过，setState是StatefulWidget才有的。
  // }             //当前我们用的是StatelessWidget,下面我们再去创建一个StatefulWidget。     State指的其实就是数据。

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
      backgroundColor: Colors.grey[100],
        appBar: AppBar(




          // leading: IconButton(        //图标按钮           (自己添加的图标，当去掉这段代码时，写入抽屉时就自动变成动态了)
          //   icon:Icon(Icons.menu),
          //   tooltip:'Navigration',
          //   onPressed:() => debugPrint('Navigration button is pressed'),  // null,
          // ),





          title:Text('NINGHAO666dawei'),
          actions: <Widget>[
            IconButton(
            icon:Icon(Icons.search),
            tooltip:'Search',
            onPressed:() => debugPrint('Search button is pressed'),
          ),
          ],
          elevation: 0.0,  //appBar标签阴影部分区域
          bottom:TabBar(
            unselectedLabelColor: Colors.black38,
            indicatorColor:Colors.blue,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorWeight:1.0,
            tabs: <Widget>[
              Tab(icon: Icon(Icons.local_florist)),
              Tab(icon:Icon(Icons.change_history)),
              Tab(icon:Icon(Icons.directions_bike)),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            ListViewDemo(),//?//Icon(Icons.local_florist,size: 128.0,color:Colors.black12),////////////////？最后一步
            ListViewDemo(),//?Icon(Icons.change_history,size: 128.0,color:Colors.black12),/////////////////////////
            Icon(Icons.directions_bike,size: 128.0,color:Colors.black12),
          ],
        ),         //null,              //ListViewDemo(),
        //endDrawer: Text('This is drawer'),    //抽屉右边显示字
      //  drawer: Text('This is drawer'),
        drawer:Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[



              UserAccountsDrawerHeader(
                accountName: Text('dawei',style:TextStyle(fontWeight:FontWeight.bold)),
                accountEmail: Text('dawei@666'),
                currentAccountPicture: CircleAvatar(
                   backgroundImage: NetworkImage('http://n.sinaimg.cn/sports/2_img/upload/cf0d0fdd/107/w1024h683/20181128/pKtl-hphsupx4744393.jpg'),
                  //backgroundImage: NetworkImage('https://resources.ninghao.org/images/wanghao.jpg'),
                ),
                decoration: BoxDecoration(
                  color:Colors.blue,
                  image: DecorationImage(
                    image: NetworkImage('https://resources.ninghao.org/images/childhood-in-a-picture.jpg'),
                    fit:BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                      Colors.yellow[400].withOpacity(0.6),
                      //BlendMode.srcOver         //头像背景颜色的效果
                      BlendMode.hardLight
                    ),
                  )
                ),
              ),
              // DrawerHeader(
              //   child:Text('header'.toUpperCase()),
              //   decoration: BoxDecoration(
              //     color: Colors.grey[100],
              //   ),
              // ),




              ListTile(
                title: Text('Messages', textAlign:TextAlign.right,),
                trailing: Icon(Icons.message, color: Colors.blue, size: 22.0,),
                onTap: () => Navigator.pop(context),
              ),
              ListTile(
                title: Text("Favorite",textAlign:TextAlign.right),
                trailing: Icon(Icons.favorite,color:Colors.red,size:22.0,),
                onTap: () => Navigator.pop(context),
              ),
              ListTile(
                title: Text("Settings",textAlign:TextAlign.right,),
                trailing: Icon(Icons.settings,color:Colors.blueGrey,size:22.0,),
                onTap: () => Navigator.pop(context),
              ),
            ],
          ),
        ),

        // Container(
        //   color:Colors.white,
        //   padding: EdgeInsets.all(8.0),
        //   child: Column(
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     children: <Widget>[
        //       Text('This is drawer')
        //     ],
        //   ),
        // )


          bottomNavigationBar: BottomNavigationBarDemo(),   //BottomNavigationBar(        
        //   //  currentIndex: 1,
        //   currentIndex: _currentIndex,          //进行激活，用变量表示索引值，在上面在进行定义一个变量。
        //   onTap: _onTapHandler,                 //切换这个激活状态，onTap代表回调。

        //   type: BottomNavigationBarType.fixed,
        
        //   fixedColor: Colors.blue,
        //   items: [
        //     BottomNavigationBarItem(
        //       icon: Icon(Icons.explore),
        //       title:Text('Explore'),
        //     ),
        //     BottomNavigationBarItem(
        //       icon: Icon(Icons.history),
        //       title:Text('history'),
        //     ),
        //     BottomNavigationBarItem(
        //       icon: Icon(Icons.list),
        //       title:Text('List'),
        //     ),
        //     BottomNavigationBarItem(            //当底部的导航栏的项目颜色为白色，当导航栏项目大于4个
        //       icon: Icon(Icons.person),         //导致顶部导航栏类型会发生变化。在BottomNavigationBar里面
        //       title:Text('My'),                 //添加type,去重新设置导航栏的类型。把它设置成默认的BottomNavigationBarType的fixed.
        //     ),
        //     BottomNavigationBarItem(
        //       icon: Icon(Icons.live_tv),
        //       title:Text('live_tv'),
        //       )，      //?这个逗号在转到另一侧要没有这个逗号。
        //   ],
        // ),
        
        
      ),
    );
  }
}