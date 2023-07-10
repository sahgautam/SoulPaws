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

class MyPageViewControllerCat extends StatelessWidget {
  final PageController controllerCat;
  final List<CatModel> cats;

  MyPageViewControllerCat(this.controllerCat, this.cats);

  @override
  Widget build(BuildContext context) {
    List<CatModel> lessThan5 = [];
    List<CatModel> greaterThan5 = [];

    for (int i = 0; i <= cats.length - 1; i++) {
      print("The total i is: -->$i");
      if (i <= 2) {
        print("The IF value of  i is: $i");
        lessThan5.add(cats[i]);
      } else {
        print("The Else value of  i is:$i");
        greaterThan5.add(cats[i]);
      }
    }
    return Column(
      children: [
        Expanded(child: firstPageViewController(controllerCat, lessThan5)),
        Expanded(
          child: secondPageViewController(controllerCat, greaterThan5),
        )
      ],
    );
  }

  
