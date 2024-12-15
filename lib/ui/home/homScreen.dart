import 'package:flutter/material.dart';
import 'package:news/ui/category_details/categoryDetailsWidget.dart';
import 'package:news/ui/home/widgets/categoriesTab.dart';
import 'package:news/ui/home/widgets/customDrawer.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'homeScreen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late Widget selectedWidget;
  @override
  void initState() {
    super.initState();
    selectedWidget = CategoriesTab(selectedNews);
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
            image: AssetImage("assets/images/pattern.png"),
            fit: BoxFit.cover),
      ),
      child: Scaffold(
        drawer: Drawer(
          child: CustomDrawer(
            onpress: selectedTab,
          ),
        ),
        appBar: AppBar(
          title: const Text('News App'),
        ),
        body: selectedWidget,
      ),
    );
  }

  selectedTab(TabEnum index) {
    if (index == TabEnum.categories_tab) {
      selectedWidget = CategoriesTab(selectedNews);
    } else {
      selectedWidget = const Text('Settings');
    }
    setState(() {

    });
    Navigator.pop(context);
  }
  selectedNews(String id){
    selectedWidget = Categorydetailswidget(categoryId:id);
    setState(() {

    });
  }
}
