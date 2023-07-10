import 'dart:convert';

CatModel catModelFromJson(String str) => CatModel.fromJson(json.decode(str));

String catModelToJson(CatModel data) => json.encode(data.toJson());

class CatModel {
  String? name;
  String? age;

  CatModel({
    this.name,
    this.age,
  });

  factory CatModel.fromJson(Map<String, dynamic> json) => CatModel(
    name: json["name"],
    age: json["age"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "age": age,
  };
}
