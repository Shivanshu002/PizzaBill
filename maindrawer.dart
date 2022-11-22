import 'package:drawer/home_page.dart';
import 'package:flutter/material.dart';
import 'package:drawer/information_page.dart';
import 'package:drawer/order_details.dart';
import 'package:drawer/setting_page.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 58, 57, 58),
      body: Drawer(
        backgroundColor: Colors.white,
        child: Column(
          children: <Widget>[
            Container(
              //1st container
              color: Color.fromARGB(255, 202, 202, 202),

              width: double.infinity,
              child: Column(
                children: <Widget>[
                  Container(
                    //wrap container
                    margin: EdgeInsets.only(top: 30, bottom: 10),
                    width: 75,
                    height: 90,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://images.unsplash.com/photo-1614027164847-1b28cfe1df60?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8M3x8fGVufDB8fHx8&w=1000&q=80"))),
                  ),
                  Text(
                    "^_^ WINE ^_^",
                    style: TextStyle(fontSize: 19, color: Colors.black),
                  )
                ],
              ),
            ),
            ListTile(
              title: Text(
                "Home",
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              leading: Icon(Icons.home),
              onTap: (() {
                Navigator.of(context).pop();
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => home_page()));
              }),
            ),
            ListTile(
              title: Text(
                "Information",
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              leading: Icon(Icons.info),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => InformationPage()));
              },
            ),
            ListTile(
              title: Text(
                "Order Details",
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              leading: Icon(Icons.details),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => order_details(),
                    ));
              },
            ),
            ListTile(
              title: Text(
                "Setting",
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              leading: Icon(Icons.settings),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => setting_page(),
                    ));
              },
            ),
            ListTile(
              title: Text(
                "Logout",
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              leading: Icon(Icons.logout),
              onTap: null,
            )
          ],
        ),
      ),
    );
  }
}
