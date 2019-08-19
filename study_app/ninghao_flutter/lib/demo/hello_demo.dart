import 'package:flutter/material.dart';


// import '../model/post.dart';

// import './listview_demo.dart';



class Hello extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'hello',
        textDirection:TextDirection.ltr,
        style:TextStyle(
          fontSize:40.0,
          fontWeight: FontWeight.bold,
          color:Colors.black87,

        )
      ),
    );
  }
}