import 'package:flutter/material.dart';
import 'constants.dart';
class ApplyIcon extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color iconColor;

  ApplyIcon({ this.icon, this.text, this.iconColor});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80.0,
          color: iconColor,),
        SizedBox(height: 15.0,),
        Text(text, style: LabelTextstyle
        ),
      ],
    );
  }
}
  class OptionCard extends StatelessWidget {
  final Color colour;
  final Widget childCard;
  OptionCard(this.colour, {this.childCard});
  @override
  Widget build(BuildContext context) {
  return Container(
  child: childCard,
  margin: EdgeInsets.all(15.0),
  decoration: BoxDecoration(
  color: colour,
  borderRadius:BorderRadius.circular(11.0),
  ),
  );
  }
  }


class RoundIconButton extends StatelessWidget {
  final Function onPress;
  final IconData icon;
  RoundIconButton({this.icon,this.onPress});
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPress,
      constraints: BoxConstraints.tightFor(
        width: 46.0,
        height: 46.0,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
      child: Icon(icon),
    );
  }
}
