import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news/main.dart';
import 'package:news/model/Category.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key,required this.onTap,required this.index, required this.categoryModel});
  final CategoryModel categoryModel;
  final int index;
  final void Function(String) onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap(categoryModel.title);
      },
      child: Container(
        decoration: BoxDecoration(
          color: categoryModel.color,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25.r),
            topRight: Radius.circular(25.r),
            bottomLeft: Radius.circular(index.isEven?25.r:0),
            bottomRight: Radius.circular(index.isOdd?25.r:0),
          ),
        ),
        child: Column(
          children: [
          Image.asset("assets/images/${categoryModel.image}",
            height: 116.h,
            width: 132.w,),
            SizedBox(height: 10.h,),
            Text(categoryModel.title,
              style: Theme.of(context).appBarTheme.titleTextStyle,
            ),
        ],),
      ),
    );
  }
}
