import 'package:flutter/material.dart';
import 'package:flutter_application_1/const/constdata.dart';
import 'package:flutter_application_1/module/resturantmenu.dart';

class resturantmodel extends StatelessWidget {
  String restname;
  String restimage;
  resturantmodel({required this.restname, required this.restimage});

  Widget build(BuildContext context) {
    return Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/$restimage")))),
            ),
            Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                            flex: 3,
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Text(
                                "$restname",
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.bold),
                              ),
                            )),
                        Expanded(
                          child: Text(
                            "${resdistance[0]}",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(15, 1, 1, 1),
                          child: Text(
                            "${emoji[0]}",
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(15, 1, 1, 1),
                          child: Text(
                            "${restaddress[0]}",
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(15, 1, 1, 1),
                          child: Text(
                            "${resdistance[0]}",
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: ConstrainedBox(
                            constraints:
                                BoxConstraints.tightFor(width: 120, height: 30),
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.orange),
                                onPressed: () {},
                                child: Text(
                                  "Review",
                                  style: TextStyle(fontSize: 18),
                                )),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: ConstrainedBox(
                            constraints:
                                BoxConstraints.tightFor(width: 120, height: 30),
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.orange),
                                onPressed: () {},
                                child: Text(
                                  "Contact",
                                  style: TextStyle(fontSize: 18),
                                )),
                          ),
                        ),
                      ],
                    ),
                    Center(
                      child: Text(
                        "Menu",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Flexible(
                      flex: 6,
                      child: Padding(
                          padding: const EdgeInsets.fromLTRB(8, 1, 1, 5),
                          child: GridView.count(
                            crossAxisSpacing: 18,
                            mainAxisSpacing: 18,
                            crossAxisCount: 2,
                            scrollDirection: Axis.vertical,
                            children: restmenu(),
                          )),
                    )
                  ],
                ))
          ],
        ));
  }
}
