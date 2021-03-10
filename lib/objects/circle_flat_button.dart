import 'package:flutter/material.dart';

class circleFlatButton extends StatelessWidget {
  String text;
  double tl;
  double tr;
  double bl;
  double br;
  Function function;
  BorderSide widget;
  circleFlatButton({this.text,this.tl,this.tr,this.bl,this.br,this.function,this.widget});

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      //color: Color(0xFF04B9E6),
      textColor: Colors.white,
      minWidth: 160.0,
      height: 45.0,
      shape: RoundedRectangleBorder(

          borderRadius: BorderRadius.only(topLeft: Radius.circular(tl),topRight: Radius.circular(tr),bottomLeft: Radius.circular(bl),bottomRight: Radius.circular(br)),
          side: widget,
      ),
      onPressed:  function,
      child: Text('$text',style: TextStyle(fontFamily: 'Roboto-Regular' ,fontSize: 20.0, color: Color(0xffffffff)),), );
  }
}

