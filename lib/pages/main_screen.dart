import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app/functions/build_ellipse_button_border.dart';
import 'package:flutter_app/objects/circle_percent_indicator_stack.dart';
import 'package:flutter_app/objects/circle_flat_button.dart';
import 'package:flutter_app/objects/half_circle.dart';
import 'package:flutter_app/objects/super_ellipse.dart';
import 'package:flutter_app/pages/settings_screen_drawer.dart';
import 'dart:math' as math;
import 'package:line_icons/line_icons.dart';
import 'package:provider/provider.dart';
import 'package:flutter_app/pages/task_data.dart';
import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter_app/objects/r_half_circle.dart';
import 'package:flutter_app/objects/study_time_button.dart';
import 'package:flutter_app/objects/break_time_button.dart';
import 'package:flutter_app/objects/quarter_circle.dart';
import 'package:flutter_app/objects/l_half_circle.dart';





class MainScreen extends StatefulWidget {

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {




  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
void initState() {
    // print('${MediaQuery.of(context).size.width}');
    // print('${MediaQuery.of(context).size.height}');

    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      key: _scaffoldKey,
        endDrawer: SettingsScreenDrawer(),
        body: Container(decoration: BoxDecoration(color: Color(0xFF0F1123)),
            child: Center(child: Column(

              mainAxisAlignment: MainAxisAlignment.end,
               crossAxisAlignment: CrossAxisAlignment.center,
               children: [

                 Stack(overflow: Overflow.visible,
                   children: [


                    Positioned(top: -(MediaQuery.of(context).size.height/2+60),left: (MediaQuery.of(context).size.width/2)-150,
                        child: CirclePercentIndicatorStack(progress: Provider.of<TaskData>(context,listen: false).milliseconds/6000 ,text: (Provider.of<TaskData>(context,listen: true).selectTime)?'${Provider.of<TaskData>(context,listen: false).valueSliderStudy.toInt()} MIN':'${Provider.of<TaskData>(context,listen: true).valueSliderBreak.toInt()} MIN',)),
                     Row(mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         LHalfCircle(),
                       SizedBox(width: 150,),
                       RHalfCircle(scaffoldKey: _scaffoldKey),
                     ],),
                   ],),



               ],),),


        ));
  }
}


// RHalfCircle(scaffoldKey: _scaffoldKey),

// studyTimeButton(),
// SizedBox(width: 15.0,),
// breakTimeButton()



