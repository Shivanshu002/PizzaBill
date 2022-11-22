import 'package:flutter/material.dart';

class InformationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black87,
          title: Text("Your account information"),
        ),
        body: Center(
          child: Text("Information"),
        ));
  }
}
