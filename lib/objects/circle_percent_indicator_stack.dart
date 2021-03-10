import 'package:flutter/material.dart';
import 'package:square_percent_indicater/square_percent_indicater.dart';
import 'package:provider/provider.dart';
import 'package:flutter_app/pages/task_data.dart';


class CirclePercentIndicatorStack extends StatelessWidget {

  double progress;
  String text;
  CirclePercentIndicatorStack({this.progress,this.text});


  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.center,
      children: <Widget>[
        Container(width : 297.0 , height: 297.0,decoration: BoxDecoration(shape: BoxShape.circle,color: Color(0xFFE5E5E8),
            boxShadow: [BoxShadow(color: Colors.white,offset: Offset(0.0, 0.0), //(x,y)
              spreadRadius: 2.0,blurRadius: 10.0,),]
        ),),
        SquarePercentIndicator(
          width: 300,
          height: 300,
          startAngle: StartAngle.topLeft,
          reverse: false,
          borderRadius: 150,
          shadowWidth: 2.0,
          progressWidth: 6,
          shadowColor: Colors.grey,
          progressColor: Colors.blue,
          progress: progress,
          child: Center(
              child: Text(
                text,
                style: TextStyle(fontFamily: 'Roboto-Regular', fontWeight: FontWeight.normal, fontSize: 40, color: Color(0xFF8A0000)),
              )),
        ),

      ],);
  }
}
