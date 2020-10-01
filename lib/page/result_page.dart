import 'file:///C:/Users/knksh/AndroidStudioProjects/bmi_calc/lib/components/constants.dart';
import 'file:///C:/Users/knksh/AndroidStudioProjects/bmi_calc/lib/components/extraClass.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'chart_page.dart';
class ResultPage extends StatelessWidget {
  final String result;
  final String bmi;
  final String desc;
  ResultPage({this.bmi,this.result,this.desc});
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text('Your Result',
              style: TextStyle(
                fontSize: 50.0,
                fontWeight: FontWeight.bold,
                color: inactiveColor,
              ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: OptionCard(inactive,
            childCard: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(result, style: TextStyle(
                  color: activeColor,
                  fontSize: 25.0,
                ),
                ),
                Text(bmi,style: TextStyle(
                  color: Colors.white,
                  fontSize: 70.0,
                  fontWeight: FontWeight.bold,
                ),
                ),
                Text(desc,
                textAlign: TextAlign.center,
                style: LabelTextstyle,
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> ChartPage(),
                    ),
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(FontAwesomeIcons.chartLine),
                      SizedBox(width: 20.0,),
                      Text('Click Here for BMI Chart',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20.0,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),)
          ),
          GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: Container(
              color: Color(0xFF88db76),
              height: 60.0,
              width: double.infinity,
              child: Center(child: Text('RE-CALCULATE',
                style: TextStyle(fontSize: 30,
                  color: active,
                ),
              ),
              ),
            ),
          )
        ],
      ),

    );
  }
}
