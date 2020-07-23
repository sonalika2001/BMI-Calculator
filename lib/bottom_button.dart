import 'package:flutter/material.dart';
import 'constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton({this.text, this.onTap});

  final Text text;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: kbottomwidgetcolor,
        width: double.infinity,
        height: kbottomcontainerheight,
        margin: EdgeInsets.only(top: 10),
        child: Center(child: text),
      ),
    );
  }
}
