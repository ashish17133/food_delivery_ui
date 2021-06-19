import 'package:flutter/material.dart';
import 'package:flutter_application_1/restaurantPages/restaurant0.dart';
import 'package:flutter_application_1/restaurantPages/restaurant1.dart';
import 'package:flutter_application_1/restaurantPages/restaurant2.dart';
import 'package:flutter_application_1/restaurantPages/restaurant3.dart';
import 'package:flutter_application_1/restaurantPages/restaurant4.dart';

Color appbartxtcolor = Colors.white;
Color appbaricon = Colors.white;

OutlineInputBorder homepagesearch = OutlineInputBorder(
    borderSide: BorderSide(width: 2, color: Colors.orange),
    borderRadius: BorderRadius.circular(30));

List<String> fooditem = [
  "Burger",
  "Burrito",
  "pancake",
  "Pizza",
  "Ramen",
  "Salmon",
  "Steak",
];
List<String> resturant = [
  "Restaurant0",
  "Restaurant1",
  "Restaurant2",
  "Restaurant3",
  "Restaurant4",
  "Restaurant0",
  "Restaurant1",
  "Restaurant2",
];

List<String> foodimage = [
  "burger.jpg",
  "burrito.jpg",
  "pancakes.jpg",
  "pasta.jpg",
  "pizza.jpg",
  "ramen.jpg",
  "salmon.jpg",
  "steak.jpg"
];

List<String> restimage = [
  "restaurant0.jpg",
  "restaurant1.jpg",
  "restaurant2.jpg",
  "restaurant3.jpg",
  "restaurant4.jpg",
];

List<List<String>> datetime = [
  ['Jan', "02"],
  ['FEB', "27"],
  ['MAR', "22"],
  ['APRIL', "14"],
  ['MAY', "19"],
  ['JUN', "24"],
  ['JUL', "11"],
  ['AUG', "03"],
];

List<String> restaddress = ["200-Main St,New York,NY"];
List<String> resdistance = ["0.2 km away"];

List<String> emoji = [
  "⭐⭐⭐⭐",
  "⭐⭐⭐⭐⭐",
  "⭐⭐",
  "⭐⭐⭐",
  "⭐⭐⭐⭐",
  "⭐",
  "⭐⭐",
  "⭐⭐⭐",
];
List<Widget> pushrest = [
  restaurant0(),
  restaurant1(),
  restaurant2(),
  restaurant3(),
  restaurant4(),
];

List<String> foodprice = [
  "8.86",
  "9.6",
  "18.5",
  "20.5",
  "2.8",
  "5.7",
  "6.8",
  "1.2",
  "3.2",
  "8.5"
];
