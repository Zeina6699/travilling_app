import 'package:flutter/material.dart';
import 'package:travelling_app/data.dart';
import 'package:travelling_app/widgets/custom_blue_text.dart';
import 'package:travelling_app/widgets/custom_list_view.dart';

class TripDetailsScreen extends StatelessWidget {
  const TripDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {

  final tripId = ModalRoute.of(context)!.settings.arguments as String;
  final selectedTrip=TripsList.firstWhere((t)=>t.id==tripId);
 
    return Scaffold(
      appBar: AppBar(title: Text(tripId)),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 300,
              width: double.infinity,
              child: Image.network(selectedTrip.imageUrl,fit: BoxFit.cover)),
          const  SizedBox(height: 10),
         customBlueText(data: 'الأنشطة',alignment:  Alignment.topRight),
         CustomListView(
          selectedTrip: selectedTrip,
          itemCount:  selectedTrip.activities.length,
          itemBuilder: (context,index){
           return Card(
             elevation: 0.6,
             child: Padding(
               padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 10)
              , child: Text(selectedTrip.activities[index])));}),
           const SizedBox(height: 10),
         customBlueText(data: 'البرنامج اليومي', alignment: Alignment.topRight)
         ,CustomListView(selectedTrip: selectedTrip, 
         itemCount:selectedTrip.program.length,
          itemBuilder:(context,index){
            return Column(
              children: [
                ListTile(
                  leading: CircleAvatar(
                    child: Text('يوم ${index+1}')),
                  title: Text(selectedTrip.program[index])),
                const  Divider()
              ],
            );}),
           const SizedBox(height: 100)])));}}
