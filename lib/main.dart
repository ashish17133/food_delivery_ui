import 'package:flutter/material.dart';
import 'package:flutter_application_1/const/constdata.dart';
import 'package:flutter_application_1/recentorder/recent.dart';

import 'module/cart.dart';
import 'nearby/nearby.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: MyApp()));
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.supervised_user_circle,
          color: appbaricon,
        ),
        title: Text("Food Delivery", style: TextStyle(color: appbartxtcolor)),
        centerTitle: true,
        actions: [
          TextButton(
              onPressed: () {
                print("Cart code goes here");
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return draweer();
                }));
              },
              child: Text(
                "Cart(5)",
                style: TextStyle(color: appbaricon),
              ))
        ],
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Color(0x000f0f0f),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
              child: TextField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: homepagesearch,
                    border: homepagesearch,
                    hintText: "Search food or Restaurants",
                    prefixIcon: Icon(Icons.search),
                    suffixIcon: Icon(
                      Icons.cancel_sharp,
                    )),
              ),
            ),
            Flexible(
              child: Padding(
                padding: EdgeInsets.fromLTRB(15, 5, 0, 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Flexible(
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(10, 1, 0, 5),
                        child: Text(
                          "Recent Orders",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Flexible(flex: 4, child: MyrecentItem()),
                    Flexible(
                      child: Text(
                        "Near by Restaurants",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Expanded(flex: 10, child: nearby()),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
