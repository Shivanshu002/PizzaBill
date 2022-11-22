import 'package:flutter/material.dart';

class order_details extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Text("Order Details"),
      ),
      body: Center(
        child: Text("Order's Wine"),
      ),
    );
  }
}
