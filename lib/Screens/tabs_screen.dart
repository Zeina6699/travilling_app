import 'package:flutter/material.dart';
import 'package:travelling_app/Screens/categories_screen.dart';
import 'package:travelling_app/Screens/favorites_screen.dart';

 class TabsScreen extends StatefulWidget {
   const TabsScreen({super.key});
 
   @override
   State<TabsScreen> createState() => _TabsScreenState();
 }
 
 class _TabsScreenState extends State<TabsScreen> {

  int selectedIndex=0; //ما بصير يكون فاينال لانو رح يتغير

final List<Map<String,Object>>screens=[
  {'Screen':const CategoriesScreen(),'Title':'تصنيفات الرحلات'},
  {'Screen':const FavoritesScreen(),'Title':'الرحلات المفضلة'},
];

  /*final List<Widget> screens=[
    const  CategoriesScreen(),
     const FavoritesScreen()];*/

   void selectScreen(int index) {
    setState(() {
      selectedIndex = index;
    });}

   @override
   Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(centerTitle: true,title:Text(screens[selectedIndex]['Title'] as String,style: TextStyle(fontFamily:'El Messiri'),),),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap:selectScreen,
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.white,
        backgroundColor: Theme.of(context).primaryColor,
        items:const[
         BottomNavigationBarItem(icon:Icon(Icons.dashboard),label:'التصنيفات' ),
         BottomNavigationBarItem(icon:Icon(Icons.star),label:'المفضلة ')
         ]),
      body: screens[selectedIndex]['Screen'] as Widget
      );}}


// كود للتاب سكرين للقسم العلوي/*

/*
class TabsScreen extends StatelessWidget {
  const TabsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
        centerTitle: true,
        title:const Text('دليل سياحي',style: TextStyle(fontFamily:'El Messiri'),),
        bottom:const TabBar(
            tabs:
            [
              Tab(icon: Icon(Icons.dashboard),text: 'التصنيفات'),
              Tab(icon: Icon(Icons.star),text: 'المفضلة')
            ])),
        body:const TabBarView(
          children:[
            CategoriesScreen(),
            FavoritesScreen()
          ]),
      ));
  }}*/