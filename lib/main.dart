import 'package:flutter/material.dart';
import 'package:flutter_widgets/home.dart';

void main() {
  runApp(MyApp());
}

//klo pake material design kita pake scaffold, sedangkan klo g pake matdes maka lgs container
//Stateless itu artinya tidak berubah (statis)
//sedangkan stateful itu bisa berubah kaya pas masukkin password, trs muncul text klo salah
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      // home: Scaffold(
      //   appBar: AppBar(title: Text("Flutter Project"),),
      //   body: Column(children: <Widget>[
      //     Text("data 1")
      //   ],
      //   ),
      // )
    );
  }
}
