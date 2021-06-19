import 'package:flutter/material.dart';
import 'package:flutter_application_1/const/constdata.dart';

class MyrecentItem extends StatelessWidget {
  const MyrecentItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 7,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Colors.white,
              height: 20,
              width: 400,
              child: Flexible(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Flexible(
                      child: Container(
                        height: 120,
                        width: 150,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image:
                                AssetImage("assets/images/${foodimage[index]}"),
                            fit: BoxFit.fill,
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "${fooditem[index]}",
                              style: TextStyle(fontSize: 30),
                            ),
                            Text(
                              "${resturant[index]}",
                              style: TextStyle(fontSize: 20),
                            ),
                            Row(children: [
                              Text(
                                "${datetime[index][0]}",
                                style: TextStyle(fontSize: 17),
                              ),
                              Text(",${datetime[index][1]}",
                                  style: TextStyle(fontSize: 17))
                            ]),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: IconButton(
                          onPressed: () {
                            print("Add recent item implemented");
                          },
                          icon: Icon(
                            Icons.add_circle_outline,
                            color: Colors.red,
                            size: 50,
                          )),
                    )
                  ],
                ),
              ),
            ),
          );
        });
  }
}
