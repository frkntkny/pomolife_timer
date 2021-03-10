import 'package:flutter/material.dart';
import 'package:flutter_app/objects/edited_container.dart';
import 'package:line_icons/line_icons.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_app/pages/settings_screen_one.dart';
import 'package:provider/provider.dart';
import 'package:flutter_app/pages/task_data.dart';
import 'package:flutter_app/pages/settings_screen_two.dart';
import 'package:flutter_app/pages/settings_screen_one.dart';

class SettingsScreenDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Container(
        width: MediaQuery.of(context).size.width/2 ,
        child: Drawer(child: Container(decoration: BoxDecoration(color: Color(0xFF04B9E6)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,

              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 70.0,),
                    Text('PomoLife',style: TextStyle(fontFamily: 'KaushanScript-Regular' ,fontSize: 40.0,color: Color(0xFF0F1123)),),
                    SizedBox(height: 70.0,),
                  ],
                ),
                Divider(height: 3.0,thickness: 2.0,color: Colors.white,indent: 30.0,endIndent: 30.0,),
                SizedBox(height: 10.0,),
                Text('Version 1.0.3',style: TextStyle(fontFamily: 'Roboto-Regular' ,fontSize: 20.0),),
                SizedBox(height: 10.0,),
                Divider(height: 3.0,thickness: 2.0,color: Colors.white,indent: 30.0,endIndent: 30.0,),
                Expanded(
                  child: ListView(scrollDirection: Axis.vertical,
                    children: [
                     EditedContainer(text: 'Contact Me',widget: Icon(LineIcons.twitter,color: Colors.black,),ontap: (){
                       Provider.of<TaskData>(context,listen: false).buttonClickedSound();
                        launch('https://twitter.com/furkan_tekinay');
                        },),
                    EditedContainer(text: 'Study Time',widget: Text('${Provider.of<TaskData>(context,listen: true).valueSliderStudy.toInt()}' ,style: TextStyle(color: Colors.black,fontFamily:'KaushanScript-Regular',fontSize: 20),),ontap: (){
                      Provider.of<TaskData>(context,listen: false).buttonClickedSound();
                      Navigator.pushNamed(context, '/settingsOne');
                    },),
                    EditedContainer(text: 'Break Time',widget: Text('${Provider.of<TaskData>(context,listen: true).valueSliderBreak.toInt()}',style: TextStyle(color: Colors.black,fontFamily:'KaushanScript-Regular',fontSize: 20),),ontap: (){
                      Provider.of<TaskData>(context,listen: false).buttonClickedSound();
                      Navigator.pushNamed(context, '/settingsTwo');
                    },),




                  ],),
                )




              ],
            )),),

    );

  }
}




