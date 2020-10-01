import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../components/extraClass.dart';
import '../components/constants.dart';
import 'result_page.dart';
import '../components/calculator.dart';

enum Gender{male,female}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
      Gender selectedGender;
      int height=180;
      int weight=30;
      int age=18;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI CALCULATOR',
        style: TextStyle(color: Color(0xFF88db76)),
        ),
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: (){setState(() {
                        selectedGender=Gender.male;
                      },);
                      },
                      child: OptionCard(
                        selectedGender==Gender.male?active:inactive,
                      childCard: ApplyIcon(
                        icon: FontAwesomeIcons.male,
                        text: 'MALE',
                        iconColor: selectedGender==Gender.male?activeColor:inactiveColor,
                      ),
                  ),
                    ),
                    ),

                  Expanded(
                    child: GestureDetector(
                      onTap: (){setState(() {
                        selectedGender=Gender.female;
                      });
                      },
                      child: OptionCard(selectedGender==Gender.female?active:inactive,
                      childCard: ApplyIcon(
                        icon: FontAwesomeIcons.female,
                        text: "FEMALE",
                        iconColor: selectedGender==Gender.female?activeColor:inactiveColor,
                      ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: OptionCard(active,
              childCard: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 Text('HEIGHT',style: LabelTextstyle,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(height.toString(),style: NumberTextStyle),
                      Text('cm',style: LabelTextstyle),
                    ],
                  ),
                  Slider(
                    value: height.toDouble(),
                    min: 120.0,
                    max: 245.0,
                    activeColor: inactiveColor,
                    inactiveColor: Color(0xFF8D8E98),
                    onChanged: (double newHeight){
                      setState(() {
                        height=newHeight.round();
                      });
                    },
                  ),
                ],
              ),
              ),
            ),
            Expanded(
              child: Row( 
                children: [
                  Expanded(
                    child: OptionCard(active,
                    childCard: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('WEIGHT(in kg)',style: LabelTextstyle,),
                        Text(weight.toString(),style: NumberTextStyle,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(icon: FontAwesomeIcons.minus ,
                            onPress: ()
                              {
                                setState(() {
                                  weight--;
                                });
                              },
                            ),
                            SizedBox(width: 15.0,),
                            RoundIconButton(icon: FontAwesomeIcons.plus ,
                              onPress: ()
                              {
                                setState(() {
                                  weight++;
                                });
                              },
                            ),
                          ],
                        ),

                      ],
                    ),
                    ),
                  ),

                  Expanded(
                    child: OptionCard(active,
                    childCard: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('AGE(in yrs)',style: LabelTextstyle,),
                        Text(age.toString(),style: NumberTextStyle,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(icon: FontAwesomeIcons.minus ,
                              onPress: ()
                              {
                                setState(() {
                                  age--;
                                });
                              },
                            ),
                            SizedBox(width: 15.0,),
                            RoundIconButton(icon: FontAwesomeIcons.plus ,
                              onPress: ()
                              {
                                setState(() {
                                  age++;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: (){
                Calculator calculatedValue=Calculator(height: height,weight: weight);

                Navigator.push(context, MaterialPageRoute(builder: (context) =>ResultPage(
                  bmi: calculatedValue.getBMI(),
                  result: calculatedValue.getResult(),
                  desc: calculatedValue.getDescription(),
                )
                ),
                );
              },
              child: Container(
                color: Color(0xFF88db76),
                margin: EdgeInsets.only(top: 20.0),
                height: 60.0,
                width: double.infinity,
                child: Center(child: Text('CALCULATE',
                  style: TextStyle(fontSize: 30,
                    color: active,
                  ),
                ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

