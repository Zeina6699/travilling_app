
import 'package:flutter/material.dart';

class customBlueText extends StatelessWidget {
customBlueText({
    required this.data,
     required this.alignment,
    super.key,
  });
  String data;
  AlignmentGeometry? alignment;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
      alignment:alignment,
      child: Text(data,style: Theme.of(context).textTheme.headlineLarge));
  }
}