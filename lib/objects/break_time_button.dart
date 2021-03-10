import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_app/pages/task_data.dart';
import 'package:flutter_app/objects/circle_flat_button.dart';

// Kullanilmiyor Kullanilmiyor Kullanilmiyor Kullanilmiyor Kullanilmiyor
// Kullanilmiyor Kullanilmiyor Kullanilmiyor Kullanilmiyor Kullanilmiyor
// Kullanilmiyor Kullanilmiyor Kullanilmiyor Kullanilmiyor Kullanilmiyor
// Kullanilmiyor Kullanilmiyor Kullanilmiyor Kullanilmiyor Kullanilmiyor

class breakTimeButton extends StatelessWidget {
  const breakTimeButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return circleFlatButton(widget: (Provider.of<TaskData>(context,listen: false).selectTime) ?BorderSide(color: Colors.blue,width: 3): BorderSide(color: Colors.red,width: 3),
      text: 'BREAK TIME',tl: 0.0,tr: 18.0, bl: 0.0, br: 18.0,function: (){
        if(Provider.of<TaskData>(context, listen: false).isSelected[2]){
          Provider.of<TaskData>(context, listen: false).millisecondsO();
          Provider.of<TaskData>(context, listen: false).setSelectTimeFalse();
        }else{
          print('Break Time is not selected');
        }


      },);
  }
}


