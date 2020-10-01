import 'package:flutter/material.dart';
import 'package:bmi_calc/components/constants.dart';
     class ChartPage extends StatelessWidget {
       @override
       Widget build(BuildContext context) {
         return Scaffold(
           appBar: AppBar(
             title: Center(
               child: Text('BMI CALCULATOR',
                 style: TextStyle(
                   color: activeColor,
                 ),),
             ),
           ),
           body: Container(
             decoration: BoxDecoration(
               color: inactiveColor,
               image: DecorationImage(
                 image: AssetImage('images/bmi_chart.png'),
                 fit: BoxFit.fill,
               ),
               )
             ),
           );
       }
     }