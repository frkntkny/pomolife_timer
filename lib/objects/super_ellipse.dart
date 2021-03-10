import 'package:flutter/material.dart';
import 'package:superellipse_shape/superellipse_shape.dart';
class SuperEllipse extends StatelessWidget {
  IconData eIcon;
  Color color;
  Function ontap;
  BorderSide widget;


  SuperEllipse({this.color,this.ontap,this.eIcon,this.widget});


  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: ontap,
      child: Stack(alignment: AlignmentDirectional.center,
      children: [
         Material(
            color: color,
            shape: SuperellipseShape(
              borderRadius: BorderRadius.circular(28.0),
              side: widget,
            ), // SuperellipseShape
            child: Container(
              width: 60.0,
              height: 60.0,
            ), // Container
          ),

        Icon(eIcon,size: 50.0,color: Colors.white,),
      ],
      ),
    ); // Material

  }
}