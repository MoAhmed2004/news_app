import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
typedef selectTab = void Function(TabEnum);

class CustomDrawer extends StatelessWidget {
   CustomDrawer({required this.onpress});

  final selectTab onpress;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          alignment: Alignment.center,
          padding: REdgeInsets.symmetric(vertical: 45),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primary,
          ),
            child:
            Text("News App",
              style: Theme.of(context).textTheme.headlineSmall,)),
        SizedBox(height: 29.h,),
        InkWell(
          onTap: () {
            onpress(TabEnum.categories_tab);
          },
          child: Padding(
            padding: REdgeInsets.only(left: 16),
            child: Row(
              children: [
                Icon(
                  Icons.list,
                  color: Colors.black,
                  size: 24.sp,
                ),
                SizedBox(width: 16.w,),
                Text("Categories",
                  style:Theme.of(context).textTheme.headlineSmall?.copyWith(
                    color: Colors.black,
                  ))
              ],
            ),
          ),
        ),
        SizedBox(height: 29.h,),
        InkWell(
          onTap: () {
            onpress(TabEnum.settings_tab);
          },
          child: Padding(
            padding: REdgeInsets.only(left: 16),
            child: Row(
              children: [
                Icon(
                  Icons.settings,
                  color: Colors.black,
                  size: 24.sp,
                ),
                SizedBox(width: 16.w,),
                Text("Settings",
                    style:Theme.of(context).textTheme.headlineSmall?.copyWith(
                      color: Colors.black,
                    ))
              ],
            ),
          ),
        ),
      ],
    );
  }
}
enum TabEnum{
  categories_tab,
  settings_tab
}
