import "package:flutter/material.dart";
import 'package:flutter_application_1/const/constdata.dart';
import 'package:flutter_application_1/module/restaurantmodel.dart';
import 'package:flutter_application_1/module/resturantmenu.dart';

class restaurant0 extends StatelessWidget {
  const restaurant0({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          extendBodyBehindAppBar: true,
          appBar: AppBar(
              backgroundColor: Colors.transparent,
              shadowColor: Colors.transparent,
              leading: IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.pop(context);
                  print("go back to main page");
                },
              )),
          body: resturantmodel(
            restimage: restimage[0],
            restname: resturant[0],
          )),
    );
  }
}
