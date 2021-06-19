import "package:flutter/material.dart";
import 'package:flutter_application_1/const/constdata.dart';
import 'package:flutter_application_1/module/restaurantmodel.dart';

class restaurant1 extends StatelessWidget {
  const restaurant1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
            shadowColor: Colors.transparent,
            backgroundColor: Colors.transparent,
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
                print("go back to main page");
              },
            )),
        body: resturantmodel(
          restimage: restimage[1],
          restname: resturant[1],
        ),
      ),
    );
  }
}
