import 'package:flutter/material.dart';
import 'package:flutter_application_1/const/constdata.dart';
import 'package:flutter_application_1/restaurantPages/restaurant0.dart';

class nearby extends StatelessWidget {
  const nearby({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 700,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Flexible(
              child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.all(10),
                      child: Container(
                        height: 160,
                        color: Colors.white,
                        child: Row(
                          children: [
                            Container(
                                height: 160,
                                width: 150,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    image: DecorationImage(
                                        fit: BoxFit.fill,
                                        image: AssetImage(
                                            'assets/images/${restimage[index]}')))),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(10, 1, 1, 1),
                                  child: TextButton(
                                    child: Text("${resturant[index]}"),
                                    onPressed: () {
                                      int value = index;
                                      print("Restaurant $index");
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) {
                                          return pushrest[value];
                                        }),
                                      );
                                    },
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(10, 1, 1, 1),
                                  child: Text("${emoji[index]}"),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(10, 1, 1, 1),
                                  child: Text("${restaddress[0]}"),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(10, 1, 1, 1),
                                  child: Text("${resdistance[0]}"),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  }))
        ],
      ),
    );
  }
}
