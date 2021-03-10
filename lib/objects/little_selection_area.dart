import 'package:flutter/material.dart';

class LittleSelectionArea extends StatelessWidget {
  Widget widget;

  LittleSelectionArea({this.widget});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 20.0),
      child: Container(child: Center(child: widget),decoration: BoxDecoration(boxShadow: [BoxShadow(color: Colors.white,offset: Offset(0.0, 0.0), //(x,y)
        spreadRadius: 2.0,blurRadius: 10.0,),],color: Colors.white,borderRadius: BorderRadius.circular(10.0)),
        width: 60.0,height: 30.0,),
    );
  }
}
