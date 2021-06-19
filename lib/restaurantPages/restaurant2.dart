import "package:flutter/material.dart";
import 'package:flutter_application_1/const/constdata.dart';
import 'package:flutter_application_1/module/restaurantmodel.dart';

class restaurant2 extends StatelessWidget {
  const restaurant2({Key? key}) : super(key: key);

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
          restimage: restimage[2],
          restname: resturant[2],
        ),
      ),
    );
  }
}
