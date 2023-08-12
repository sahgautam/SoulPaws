import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

List<BoxShadow> shadowList = [
  BoxShadow(color: Colors.grey.shade300, blurRadius: 30, offset: Offset(0, 10))
];
List<Map> categories = [
  {"name": "Cats", "iconPath": "Assets/cat_icon.png"},
  {"name": "Dogs", "iconPath": "Assets/dog_icon.png"}
];
List<Color> CarouselColor = [
  Colors.blue.shade300,
  Colors.blueGrey.shade300,
  Colors.green.shade300,
  Colors.amber.shade300,
  Colors.deepPurple.shade300
];
List<String> Description = [
  "You can't buy happiness, \n but you can rescue it.",
  "Love is a four-legged word.",
  "Cuteness overload, \n am I right?",
  "Because its your Family!",
  "Hi! I am Oscar \n\"The Meow\"",
  "Henlo! Woofcome"
];
List<String> ImageVal = ["", "", "img_2.png", "img_3.png", ""];
List<Icon> icons = [
Icon(
Icons.favorite,
color: Colors.pink,
),
Icon(Icons.pets, color: Colors.black),
Icon(Icons.sentiment_satisfied_alt, color: Colors.yellow),
