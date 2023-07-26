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

