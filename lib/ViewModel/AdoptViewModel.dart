import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:soulpaws/model/AdoptModel.dart';
import 'package:soulpaws/repositories/adopt_repo.dart';

class AdoptionViewModel with ChangeNotifier {
  AdoptionRepo _adoptionRepo = AdoptionRepo();
  Stream<QuerySnapshot<AdoptionModel>>? _adoptdog;
  //_underscore rakheko variable aaru cls le use garna mildain a
  Stream<QuerySnapshot<AdoptionModel>>? get adoptDog => _adoptdog;