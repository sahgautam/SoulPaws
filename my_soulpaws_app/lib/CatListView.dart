import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:soulpaws/ViewModel/CatViewModel.dart';
import 'package:soulpaws/model/catModel.dart';
import 'package:provider/provider.dart';

import '../../Widgets/PageStackCat.dart';

class CatListView extends StatefulWidget {
  const CatListView({Key? key}) : super(key: key);

  @override
  State<CatListView> createState() => _CatListViewState();
}

class _CatListViewState extends State<CatListView> {
  late CatViewModel _catViewModel;
  PageController pageController = PageController(viewportFraction: 0.85);

  @override
  void initState() {
    _catViewModel = Provider.of<CatViewModel>(context, listen: false);
    _catViewModel.getCat();
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var cat = context.watch<CatViewModel>().cat;
    List<CatModel> cats = [];
    return Column(
      children: [
        Expanded(
          child: Container(
            child: StreamBuilder(
                stream: cat,
                builder:
                    (context, AsyncSnapshot<QuerySnapshot<CatModel>> snapshot) {
                  if (!snapshot.hasData) {
                    return CircularProgressIndicator();
                  } else if (snapshot.hasError) {
                    return Text("Error");
                  } else {
                    for (var querySnapshotCat in snapshot.data!.docs) {
                      final CatModel cat = querySnapshotCat.data();
                      cats.add(cat);
                    }
                    return MyPageViewControllerCat(pageController, cats);
                  }
                }),
          ),
        ),
      ],
    );
  }
}


