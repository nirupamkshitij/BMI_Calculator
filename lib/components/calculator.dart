import 'dart:math';
class Calculator{
final int height;
final int weight;
Calculator({this.height,this.weight});
double _bmi;
String getBMI(){
  _bmi=weight/pow(height/100, 2);
  return _bmi.toStringAsFixed(1);
}
String getResult(){
  if(_bmi>25)
    return 'Overweight';
  else if(_bmi>18.5)
    return 'Normal';
  else return 'Underweight';
}
String getDescription(){
  if(_bmi>25)
    return 'Keep Exercising Buddy!';
  else if(_bmi>18.5)
    return 'Well Done Buddy! Keep It Up...';
  else return 'Eat Some Quality Food Buddy...';
}

}
