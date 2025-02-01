import 'package:flutter/material.dart';

class CategoryModel{
  String title;
  String id;
  String image;
  Color color;
  CategoryModel({
    required this.id,
    required this.title,
    required this.image,
    required this.color});

  static List<CategoryModel> categories=[
    CategoryModel(
        id: 'sports', title: "Sports", image: "ball.png", color: Color(0xffC91C22)),
    CategoryModel(id:"general" ,title:"General" ,image:"Politics.png" ,color:Color(0xff003E90)),
    CategoryModel(id:"health" ,title:"Health" ,image:"health.png" ,color:Color(0xffED1E79)),
    CategoryModel(id:"business" ,title:"Business" ,image:"bussines.png" ,color:Color(0xffCF7E48)),
    CategoryModel(id:"technology" ,title:"Technology" ,image:"environment.png" ,color:Color(0xff4882Cf)),
    CategoryModel(id:"science" ,title:"Science" ,image:"science.png" ,color:Color(0xffF2D352)),
  ];
}