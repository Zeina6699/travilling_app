import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key, required this.title, required this.imgUrl, required this.id});
  final String id;
  final String title;
  final String imgUrl;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      onTap: (){Navigator.pushNamed(context, '/trips',arguments:{'id': id, 'title': title});},
      child: Stack(
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
      ),
    );
  }
}