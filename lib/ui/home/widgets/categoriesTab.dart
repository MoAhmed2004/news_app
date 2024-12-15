import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news/model/Category.dart';
import 'package:news/ui/home/widgets/categoryItem.dart';

class CategoriesTab extends StatelessWidget {
   CategoriesTab(this.onTap);
  final void Function(String) onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  REdgeInsets.symmetric(vertical: 36,horizontal: 37),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Pick a category",
            style: Theme.of(context).textTheme.titleSmall,),
          SizedBox(height: 29.h,),
          Expanded(
            child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                childAspectRatio: 1/1.2,
                mainAxisSpacing: 20.h,
                  crossAxisSpacing: 25.w
                ),
                itemBuilder: (context, index) =>CategoryItem(
                  onTap: onTap,
                    index: index, categoryModel: CategoryModel.categories[index]),
                itemCount: CategoryModel.categories.length,
            ),
          )
        ],
      ),
    );
  }
}
