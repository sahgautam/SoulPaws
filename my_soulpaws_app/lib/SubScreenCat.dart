import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:soulpaws/ViewModel/CatViewModel.dart';
import 'package:provider/provider.dart';

import '../../ViewModel/GlobalUIViewModel.dart';
import '../../ViewModel/auth_viewmodel.dart';
import '../../Widgets/AppColumn.dart';
import '../../Widgets/AppIcon.dart';
import '../../Widgets/ExpandableTextWidget.dart';
import '../../model/favCatModel.dart';

class SubScreenCat extends StatefulWidget {
  final int? index;
  final String? catName;
  final String? catDescription;
  final String? imageLink;
  final String? breed;
  final String? color;
  final int? price;

  SubScreenCat(this.index, this.catName, this.catDescription, this.imageLink,
      this.price, this.breed, this.color);

  @override
  State<SubScreenCat> createState() => _SubScreenCatState();
}

class _SubScreenCatState extends State<SubScreenCat> {
  late CatViewModel _catViewModel;
  var _currentPageValue = 0.0;
  PageController pageControllerCat = PageController(viewportFraction: 0.85);
  int _count = 1;
  bool clicked = false;
  late GlobalUIViewModel _ui;
  late AuthViewModel _auth;
  PageController pageController = PageController(viewportFraction: 0.85);
  Future<void> saveFavoriteCat() async {
    FirebaseFirestore db = FirebaseFirestore.instance;
    final data = FavoriteCatModel(
      userId: "1",
      catId: '1',
      catgName: widget.catName!,
      imageUrl: widget.imageLink!,
      breed: widget.breed!,
    );



