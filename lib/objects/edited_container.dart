import 'package:flutter/material.dart';
import 'package:flutter_app/objects/little_selection_area.dart';
import 'package:flutter_app/objects/little_selection_area_text.dart';

class EditedContainer extends StatelessWidget {
  String text;
  Widget widget;
  Function ontap;
  EditedContainer({this.text,this.widget,this.ontap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(onTap: ontap,
      child: Padding(padding: EdgeInsets.only(top: 10.0,left: 10.0,right: 10.0),child: Container(width: MediaQuery.of(context).size.width,height: 60.0,child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

          LittleSelectionAreaText(text: text,),
          LittleSelectionArea(widget: widget,),
        ],
      ),decoration: BoxDecoration(color: Colors.red,borderRadius: BorderRadius.circular(20.0),gradient: LinearGradient(begin: Alignment.bottomLeft,end: Alignment.topRight,colors: [Colors.purple, Color(0xFF9D2933)]),),)),
    );
  }
}
