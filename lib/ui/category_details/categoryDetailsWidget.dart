import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news/main.dart';
import 'package:news/ui/category_details/newsList.dart';

class Categorydetailswidget extends StatelessWidget {
  const Categorydetailswidget({super.key,required this.categoryId});
  final String categoryId;
 static const List<String> source =[
    "BBC","MBC","Sport","FaceBook","Instagram","Telegram"
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length:source.length,
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            TabBar(
              dividerHeight: 0,
              labelColor: Colors.white,
              indicatorSize: TabBarIndicatorSize.tab,
              indicator: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
                borderRadius: BorderRadius.circular(25.r),
              ),
                isScrollable: true,
                tabs: source.map((e) => Container(
                  padding: REdgeInsets.symmetric(
                    vertical: 1,
                    horizontal: 16
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25.r),
                    border: Border.all(
                      color: Theme.of(context).colorScheme.primary
                    )
                  ),
                  child: Tab(
                    child: Text(e),
                  ),
                )).toList()
            ),
            SizedBox(height: 29.h,),
            Expanded(
              child: TabBarView(
                  children: source.map((e) => Newslist(),).toList()
              ),
            )
          ],
        ),
      ),
    );
  }
}
