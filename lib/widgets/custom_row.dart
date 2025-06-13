
import 'package:flutter/material.dart';

class customRow extends StatelessWidget {
   customRow({
    super.key,
    required this.icon,
    required this.c
  });

  final IconData? icon;
   var c;

  @override
  Widget build(BuildContext context) {
    return Row(children: [Icon(icon,color: Theme.of(context).secondaryHeaderColor,),
    const SizedBox(width: 6,),
    Text('$c')
    ],);
  }
}