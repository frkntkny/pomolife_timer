import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_app/pages/task_data.dart';
import 'package:flutter_app/objects/half_circle.dart';
import 'package:flutter_app/objects/super_ellipse.dart';
import 'package:line_icons/line_icons.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:fluttericon/elusive_icons.dart';
import 'package:fluttericon/entypo_icons.dart';


final player = AudioCache();
class RHalfCircle extends StatelessWidget {
  const RHalfCircle({
    Key key,
    @required GlobalKey<ScaffoldState> scaffoldKey,
  }) : _scaffoldKey = scaffoldKey, super(key: key);

  final GlobalKey<ScaffoldState> _scaffoldKey;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 240.0,
      child: Stack(children: <Widget>[
        HalfCircle(),

        //PAUSE BUTTON
        Positioned(bottom: 10,left: -20,
          child: SuperEllipse(
            widget:  BorderSide(color: Color(0xFFE5E5E8),width: 3) ,
          color: Color(0xff4E3D53),
          eIcon:  LineIcons.bookmark,
          ontap: (){
            Provider.of<TaskData>(context,listen: false).buttonClickedSound();
            Navigator.pushNamed(context, '/infoscreen');



        },),),

        //PLAY BUTTON
        Positioned(top: -20,left:90,child: SuperEllipse(
             widget:  (Provider.of<TaskData>(context,listen: false).startStop) ?  BorderSide(color: Color(0xFFE5E5E8),width: 3) :BorderSide(color: Colors.red,width: 3),
            color: Color(0xff4E3D53),
            eIcon: Provider.of<TaskData>(context,listen: false).startStop ?LineIcons.play : LineIcons.pause  ,
            ontap: () {
              Provider.of<TaskData>(context,listen: false).buttonClickedSound();
              print('button clicked');
              print('${Provider.of<TaskData>(context,listen: false).startStop}');
              Provider.of<TaskData>(context, listen: false).startStopFunc();
          if(Provider.of<TaskData>(context, listen: false).selectTime){
            Provider.of<TaskData>(context, listen: false).studyTimerControl();
          }else{
            print('Break Time');
            Provider.of<TaskData>(context, listen: false).breakTimerControl();
          }





        })),

        //STOP BUTTON
        Positioned(bottom: 10,right: -20,child: SuperEllipse(
            widget:  BorderSide(color: Color(0xFFE5E5E8),width: 3),
            // widget: (Provider.of<TaskData>(context,listen: false).isSelected[2])?BorderSide(color: Colors.red,width: 3):BorderSide(color: Colors.white,width: 3) ,
            color: Color(0xff4E3D53),eIcon: LineIcons.stop, ontap: (){
          Provider.of<TaskData>(context,listen: false).buttonClickedSound();

              if(Provider.of<TaskData>(context, listen: false).selectTime){

                Provider.of<TaskData>(context, listen: false).millisecondsO();
                Provider.of<TaskData>(context, listen: false).studyTimerControl();
                Provider.of<TaskData>(context, listen: false).startStopFalse();
                Provider.of<TaskData>(context, listen: false).ChangeStudyTime(25);

              }else{
                Provider.of<TaskData>(context, listen: false).setSelectTimeTrue();
                Provider.of<TaskData>(context, listen: false).millisecondsO();
                Provider.of<TaskData>(context, listen: false).startStopFalse();
                Provider.of<TaskData>(context, listen: false).breakTimerControl();

              }




          Provider.of<TaskData>(context, listen: false).ChangeBreakTime(5);






          // Provider.of<TaskData>(context, listen: false).updateIsSelectedTrue(2);
          //
          // if (Provider.of<TaskData>(context, listen: false).isSelected[0] || Provider.of<TaskData>(context, listen: false).isSelected[1] ){
          //   Provider.of<TaskData>(context, listen: false).updateIsSelectedFalse(0);
          //   Provider.of<TaskData>(context, listen: false).updateIsSelectedFalse(1);
          //   print('Pause : ${Provider.of<TaskData>(context, listen: false).isSelected[0]}');
          //   print('Play : ${Provider.of<TaskData>(context, listen: false).isSelected[1]}');
          //   print('Stop : ${Provider.of<TaskData>(context, listen: false).isSelected[2]}');
          //   if (Provider.of<TaskData>(context, listen: false).selectTime){
          //     Provider.of<TaskData>(context, listen: false).studyTimerControl();
          //   }else{
          //     Provider.of<TaskData>(context, listen: false).breakTimerControl();
          //   }
          //
          //
          //
          // }else{
          //
          // }




        })),

        //SETTINGS BUTTON
        Positioned(bottom: 0,right: 90,child: SuperEllipse(
            widget: BorderSide(color: Color(0xFFE5E5E8),width: 3),
            color: Color(0xFF04B9E6),eIcon: LineIcons.cogs,ontap: (){
          Provider.of<TaskData>(context,listen: false).buttonClickedSound();


                _scaffoldKey.currentState.openEndDrawer();





            })),//// Material
      ],overflow: Overflow.visible,
      ),);
  }
}
/////////Pause button//////////
// Provider.of<TaskData>(context, listen: false).updateIsSelectedTrue(0);
//
// if (Provider.of<TaskData>(context, listen: false).isSelected[1] || Provider.of<TaskData>(context, listen: false).isSelected[2] ){
//   Provider.of<TaskData>(context, listen: false).updateIsSelectedFalse(1);
//   Provider.of<TaskData>(context, listen: false).updateIsSelectedFalse(2);
//   print('Pause : ${Provider.of<TaskData>(context, listen: false).isSelected[0]}');
//   print('Play : ${Provider.of<TaskData>(context, listen: false).isSelected[1]}');
//   print('Stop : ${Provider.of<TaskData>(context, listen: false).isSelected[2]}');
//
//
// }else{}

/////////Play button//////////

// Provider.of<TaskData>(context, listen: false).updateIsSelectedTrue(1);
//
// if (Provider.of<TaskData>(context, listen: false).isSelected[0] || Provider.of<TaskData>(context, listen: false).isSelected[2] ){
//   Provider.of<TaskData>(context, listen: false).updateIsSelectedFalse(0);
//   Provider.of<TaskData>(context, listen: false).updateIsSelectedFalse(2);
//   if (Provider.of<TaskData>(context, listen: false).selectTime){
//     Provider.of<TaskData>(context, listen: false).studyTimerControl();
//   }else{
//     Provider.of<TaskData>(context, listen: false).breakTimerControl();
//   }
//
//
//
//
// }else{}