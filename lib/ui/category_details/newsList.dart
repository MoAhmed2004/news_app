import 'package:flutter/material.dart';
import 'package:news/model/Article.dart';
import 'package:news/ui/category_details/articel_Item.dart';

class Newslist extends StatelessWidget {
  const Newslist({super.key});
  static  List<ArticleModel> articles =[
    ArticleModel(
      title: "This is a test for the articles data",
      image: "",
      date: DateTime.now(),
      source: "BBC"
    ),
    ArticleModel(
        title: "This is a test for the articles data",
        image: "",
        date: DateTime.now(),
        source: "BBC"
    ),
    ArticleModel(
        title: "This is a test for the articles data",
        image: "",
        date: DateTime.now(),
        source: "BBC"
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index) {
          return ArticleItem(
            articleModel: articles[index],
          );
        },
        separatorBuilder: (context, index) => Divider(),
        itemCount: 3);
  }
}
