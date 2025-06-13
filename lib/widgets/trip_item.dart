import 'package:flutter/material.dart';
import 'package:travelling_app/models/trip_model.dart';
import 'package:travelling_app/widgets/custom_row.dart';

class TripItem extends StatelessWidget {
  const TripItem({super.key, required this.title, required this.imgUrl, required this.tripType, required this.duration, required this.season, required this.id});
 final String id;
  final String title;
  final String imgUrl;
  final TripType tripType;
  final int duration;
  final Season season;


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){Navigator.pushNamed(context, '/details',arguments: id);},
     child: Card(
      elevation: 7,
      margin: const EdgeInsets.all(10),
      shape:RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
        
      ),
      child: Column(
        children: [
          Stack(children: [
            ClipRRect
            
            (
              borderRadius: BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(15) ),
              child: Image.network(imgUrl,height: 250,width: double.infinity,fit: BoxFit.cover
              ,)),
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter ,
                    stops: [
                      0.5,
                      1
                    ],
                    colors: [
                      Colors.black.withOpacity(0),
                      Colors.black.withOpacity(.8)
                    ]
                  )
                ),
                padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                height: 250,
                alignment: Alignment.bottomRight,
                child: Text(title,style: Theme.of(context).textTheme.headlineMedium,
                overflow: TextOverflow.fade
                ,),
                
              )
          ],),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                customRow(icon: Icons.today,c:'$duration أيام'),
                customRow(icon: Icons.wb_sunny,c: seasonText(season)),
                customRow(icon: Icons.family_restroom,c: tripText(tripType))
              ],
            ),
          )
        ],
      ),
     ), 
    );
  }
}
