import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_app/pages/task_data.dart';
import 'package:flutter_app/objects/slider_text.dart';
import 'package:flutter_app/objects/slider.dart';



//double valueSliderStudy = 5;
//double maxStudy =10;
//double minStudy = 1;

class SettingsScreenOne extends StatefulWidget {

  @override
  _SettingsScreenOneState createState() => _SettingsScreenOneState();
}

class _SettingsScreenOneState extends State<SettingsScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('Study Time'),backgroundColor: Color(0xFF04B9E6),),
        body: Container(
          decoration: BoxDecoration(color: Colors.red,
           // borderRadius: BorderRadius.circular(20.0),
            gradient: LinearGradient(begin: Alignment.bottomCenter,end: Alignment.topCenter,colors: [Color(0xFF0F1123), Color(0xFF04B9E6)]),),
          child: Column(

          children: [
            Expanded(
              flex: 5,
              child: Row(
                children: [
                  Expanded(flex:1,child: Center(child: SettingScreenText(textE: '${Provider.of<TaskData>(context,listen: false).minStudy.toInt()}',),)),



                  SliderObject(

                    value: Provider.of<TaskData>(context,listen: false).valueSliderStudy,
                    min: Provider.of<TaskData>(context,listen: false).minStudy,
                    max: Provider.of<TaskData>(context,listen: false).maxStudy,
                    divisions: (Provider.of<TaskData>(context,listen: false).maxStudy-Provider.of<TaskData>(context,listen: false).minStudy).toInt(),
                    label: '${Provider.of<TaskData>(context,listen: false).valueSliderStudy.toInt()}',
                    onChangedValue: (value){
                      Provider.of<TaskData>(context,listen: false).ChangeStudyTime(value);
                    },
                    // onChanged: (value) {
                    //
                    //   Provider.of<TaskData>(context,listen: false).ChangeStudyTime(value);
                    //   },
                  ),


                  Expanded(flex:1,child: Center(child: SettingScreenText(textE: '${Provider.of<TaskData>(context,listen: false).maxStudy.toInt()}',),)),
                ],
              ),
            ),
            Expanded(flex:1,child: Container(
              width: 300,
                decoration: BoxDecoration(color: Colors.red,borderRadius: BorderRadius.circular(20.0),gradient: LinearGradient(begin: Alignment.bottomLeft,end: Alignment.topRight,colors: [Colors.purple, Color(0xFF9D2933)]),),

                child: FlatButton(onPressed: (){
                  Provider.of<TaskData>(context,listen: false).buttonClickedSound();
                  Navigator.pop(context);
                }, child: SettingScreenText(textE: '${Provider.of<TaskData>(context,listen: true).valueSliderStudy.toInt()}',)))),
          ],
        ),));
  }
}

