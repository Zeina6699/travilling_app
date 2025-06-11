import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key, required this.title, required this.imgUrl});
  final String title;
  final String imgUrl;

  @override
  Widget build(BuildContext context) {
    return Stack(
children: [
  ClipRRect(
   borderRadius: BorderRadius.circular(15),
    child: Image.network(imgUrl,height: 200,fit: BoxFit.cover)),
  Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      color: Colors.black.withOpacity(.4),
    ),
    
    alignment: Alignment.center,
    child: Text(title,
    style: Theme.of(context).textTheme.headlineMedium)),
    //style: TextStyle(fontSize: 30,color: Colors.white),),padding: EdgeInsets.all(10),)


],
    );
  }
}