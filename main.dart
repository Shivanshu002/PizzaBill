import 'package:drawer/maindrawer.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: " Online Wine Shop",
    home: MyDrawer(),
  ));
}

class MyDrawer extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyDrawerState();
  }
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 177, 211, 218),
        appBar: AppBar(
          backgroundColor: Colors.black87,
          title: Text(" See Here Wine Collection"),
        ),
        drawer:
            MainDrawer(),
        body: Center(
          child: Text(""),
        ));
  }
}


 