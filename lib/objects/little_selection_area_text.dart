import 'package:flutter/material.dart';

class LittleSelectionAreaText extends StatelessWidget {
  String text;
  LittleSelectionAreaText({this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20.0),
      child: Text('$text',style: TextStyle(color: Colors.white,fontSize: 20.0),),
    );
  }
}