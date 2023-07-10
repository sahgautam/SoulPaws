import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:my_first_app/Services/FirebaseService.dart';
import 'package:my_first_app/models/ProductModel.dart';

class CatRepository{
  final instance = FirebaseService.db.collection("Cat").withConverter(
      fromFirestore: (snapshot, _){
        return ProductModel.fromFirebaseSnapshot(snapshot);
      },
      toFirestore: (CatModel model, _) => model.toJson());

  Future<dynamic> createCat(CatModel data) async {
    try{
      final product = await instance.add(data);
      return Cat;
    }catch(e){rethrow;}
  }

  Future<List<QueryDocumentSnapshot<CatModel>>> getAllProduct() async{
    try{
      final Cats = (await instance.get()).docs;
      return Cats;

    }catch(e){rethrow;}
  }
  Future<void> deleteCat(String id) async{
    try{
      await instance.doc(id).delete();
    }catch(e){rethrow;}
  }
  Future<CatModel?> getOneCat(String id) async{
    try{
      final product = (await instance.doc(id).get()).data();
      return Cat;
    }catch(e){rethrow;}
  }
  Future<void> updateCat(String id, ProductModel data)async{
    try{
      await instance.doc(id).set(data);
    }catch(e){rethrow;}
  }
}