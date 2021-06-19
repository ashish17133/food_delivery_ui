import 'package:flutter/material.dart';
import 'package:flutter_application_1/const/constdata.dart';

List<Widget> restmenu() {
  List<Widget> item = [];
  for (int i = 0; i <= 6; i++) {
    item.add(Container(
      height: 100,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/${foodimage[i]}"),
            fit: BoxFit.fill),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.black26,
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "${fooditem[i]}",
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
                Text(
                  "Rs.${foodprice[i]}",
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: IconButton(
                  onPressed: () {
                    print("add item");
                  },
                  icon: Icon(
                    Icons.add_circle_outline,
                    color: Colors.red,
                    size: 50,
                  )),
            ),
          )
        ],
      ),
    ));
  }
  ;
  return item;
}
