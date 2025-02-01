import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news/model/Article.dart';
import 'package:timeago/timeago.dart' as timeago;

class ArticleItem extends StatelessWidget {
  ArticleModel articleModel;
   ArticleItem({required this.articleModel});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CachedNetworkImage(
          errorWidget: (context, url, error)=>Icon(Icons.error,
            color: Theme.of(context).colorScheme.primary,
            size: 40.sp,
          ),
          placeholder:(context, url)=>Center(child: CircularProgressIndicator(),),
          imageUrl: articleModel.image,
          height: 232.h,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        SizedBox(height: 10.h,),
        Text(articleModel.source),
        Text(articleModel.title,
          style: Theme.of(context).textTheme.titleSmall,),
        Align(
          alignment: Alignment.bottomRight,
            child: Text(timeago.format(articleModel.date)))
      ],
    );
  }
}
