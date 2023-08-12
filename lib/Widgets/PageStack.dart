import 'package:flutter/material.dart';

import '../UserScreens/subpages/subScreen.dart';
import 'AppColumn.dart';

class CreatePageStack extends StatelessWidget {
  final int index;
  final String dogName;
  final String dogDescription;
  final String imageLink;
  final String breed;
  final String color;
  final int price;
  const CreatePageStack(
      {required this.index,
        required this.dogName,
        required this.dogDescription,
        required this.imageLink,
        required this.breed,
        required this.color,
        required this.price});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => SubScreen(index, dogName, dogDescription,
                  imageLink, price, breed, color)));
    },