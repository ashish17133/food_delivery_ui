import 'package:flutter/material.dart';
import 'package:flutter_application_1/const/constdata.dart';

class draweer extends StatelessWidget {
  const draweer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          centerTitle: true,
          title: Text(
            "cart(5)",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          color: Color(0x00111111),
          child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    height: 200,
                    color: Colors.white,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(1, 1, 15, 1),
                          child: Container(
                            height: 200,
                            width: 200,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage(
                                        'assets/images/${foodimage[index]}'))),
                          ),
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "${fooditem[index]}",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "${resturant[index]}",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 10, 0, 1),
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      shape: BoxShape.rectangle,
                                      border: Border.all(width: 1)),
                                  child: Row(
                                    children: [
                                      Expanded(child: Icon(Icons.remove)),
                                      Text("${index + 1}"),
                                      Expanded(child: Icon(Icons.add))
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                            child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Price:${foodprice[index]}",
                            style: TextStyle(fontSize: 14),
                          ),
                        ))
                      ],
                    ),
                  ),
                );
              }),
        ),
        bottomSheet: Container(
          height: 40,
          width: double.infinity,
          color: Colors.orange,
          child: Center(
              child: Text(
            "Check Out",
            style: TextStyle(color: Colors.white, fontSize: 25),
          )),
        ),
      ),
    );
  }
}
