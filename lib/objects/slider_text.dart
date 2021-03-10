import 'package:flutter/material.dart';

class SettingScreenText extends StatelessWidget {
  String textE;
  SettingScreenText({this.textE});
  @override
  Widget build(BuildContext context) {
    return Text('$textE',style: TextStyle(color: Colors.white,fontFamily: 'Roboto-Regular',fontSize: 25.0),);
  }
}
