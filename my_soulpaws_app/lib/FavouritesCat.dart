import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../ViewModel/favoriteCatViewModel.dart';
import '../../model/favCatModel.dart';

class FavoriteCat extends StatefulWidget {
  const FavoriteCat({Key? key}) : super(key: key);

  @override
  State<FavoriteCat> createState() => _FavoriteCatState();
}

class _FavoriteCatState extends State<FavoriteCat> {
  FirebaseFirestore db = FirebaseFirestore.instance;
  late FavoriteCatViewModel _favoriteCatViewModel;

  void _deleteFavCat(String id) async {
    await db.collection('favCat').doc(id).delete();
  }

  @override
  void initState() {
    _favoriteCatViewModel =
        Provider.of<FavoriteCatViewModel>(context, listen: false);
    _favoriteCatViewModel.getCat();

    super.initState();
  }

  
