import 'package:flutter/material.dart';
import 'page/inputPage.dart';
void main() {
  runApp(BMIcalc());
}
class BMIcalc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0D22),
            scaffoldBackgroundColor: Color(0xFF0A0D22),

      ),
      home: InputPage(),
    );
  }
}



