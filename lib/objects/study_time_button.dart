import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:flutter_app/pages/task_data.dart';
import 'package:flutter_app/objects/circle_flat_button.dart';

// Kullanilmiyor Kullanilmiyor Kullanilmiyor Kullanilmiyor Kullanilmiyor
// Kullanilmiyor Kullanilmiyor Kullanilmiyor Kullanilmiyor Kullanilmiyor
// Kullanilmiyor Kullanilmiyor Kullanilmiyor Kullanilmiyor Kullanilmiyor
// Kullanilmiyor Kullanilmiyor Kullanilmiyor Kullanilmiyor Kullanilmiyor
class studyTimeButton extends StatelessWidget {
  const studyTimeButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return circleFlatButton(widget: (Provider.of<TaskData>(context,listen: false).selectTime) ? BorderSide(color: Colors.red,width: 3):BorderSide(color: Colors.blue,width: 3),
        text: 'STUDY TIME',tl: 18.0,tr: 0.0, bl: 18.0, br: 0.0,function: (){

          if(Provider.of<TaskData>(context, listen: false).isSelected[2]){
            Provider.of<TaskData>(context, listen: false).millisecondsO();
            Provider.of<TaskData>(context, listen: false).setSelectTimeTrue();
          }else{
            print('Study Time is not selected');
          }


        }
    );
  }
}