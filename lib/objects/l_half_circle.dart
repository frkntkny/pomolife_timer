import 'package:flutter/material.dart';
import 'package:flutter_app/objects/half_circle.dart';
import 'package:flutter_app/objects/quarter_circle.dart';

import 'package:provider/provider.dart';
import 'package:flutter_app/pages/task_data.dart';
import 'package:audioplayers/audio_cache.dart';

final player = AudioCache();

class LHalfCircle extends StatelessWidget {
  const LHalfCircle({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          HalfCircle(),
          Row(
            children: [

              GestureDetector(
                onTap: (){
                  Provider.of<TaskData>(context,listen: false).buttonClickedSound();
                  if(Provider.of<TaskData>(context, listen: false).isSelected[2]){
                    Provider.of<TaskData>(context, listen: false).millisecondsO();
                    Provider.of<TaskData>(context, listen: false).setSelectTimeTrue();
                  }else{
                    print('Study Time is not selected');
                  }
                },
                child: SizedBox(
                  width: 110.0,
                  height: 110.0,
                  child: Stack(overflow: Overflow.visible,
                    alignment: AlignmentDirectional.centerEnd,
                    children: [

                      QuarterCircle(color: (Provider.of<TaskData>(context,listen: false).selectTime)  ? Color(0xFFD34E36) : Color(0xFFE5E5E8) ,
                        circleAlignment: CircleAlignment.bottomRight,
                      ),

                      Text('\n Study \n Time',style: TextStyle(color: Colors.black,fontSize: 27,fontFamily: 'KaushanScript-Regular' ),),


                    ],),


                ),
              ),
              SizedBox(width: 5,),
              GestureDetector(
                onTap: (){
                  Provider.of<TaskData>(context,listen: false).buttonClickedSound();
                  if(Provider.of<TaskData>(context, listen: false).isSelected[2]){
                    Provider.of<TaskData>(context, listen: false).millisecondsO();
                    Provider.of<TaskData>(context, listen: false).setSelectTimeFalse();
                  }else{
                    print('Break Time is not selected');
                  }
                },
                child: SizedBox(

                  width: 110.0,
                  height: 110.0,
                  child: Stack(overflow: Overflow.visible,
                    alignment: AlignmentDirectional.centerStart,
                    children: [

                      QuarterCircle(color: (Provider.of<TaskData>(context,listen: false).selectTime) ?Color(0xFFE5E5E8): Color(0xFFD34E36),
                        circleAlignment: CircleAlignment.bottomLeft,
                      ),
                      Text('\n Break \n Time',style: TextStyle(color: Colors.black,fontSize: 27,fontFamily: 'KaushanScript-Regular' ),),
                    ],),
                ),
              ),

            ],
          ),


        ]);
  }
}
// Color(0xFFD34E36) Orange

// Color(0xFFE5E5E8) bej