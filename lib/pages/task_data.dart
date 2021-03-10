import 'dart:typed_data';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:audioplayers/audio_cache.dart';
import 'dart:async';
import 'package:audioplayers/audioplayers.dart';

final player = AudioCache();
class TaskData extends ChangeNotifier{
  double milliseconds =0 ;

  double valueSliderStudy = 25;
  double maxStudy =60;
  double minStudy = 15;

  double valueSliderBreak = 5;
  double maxBreak =15;
  double minBreak = 1;


// 0 => PauseButton,1 => PlayButton, 2 => CancelButton
  List<bool> isSelected = [true,false,true];
  bool startStop = false;


  //Only for selection of Break time and Study Time , Study time == True
  bool selectTime = true;

  void buttonClickedSound(){
    player.play('sound2.wav');
  }

  void startStopFalse(){
    startStop = false;
    notifyListeners();
  }


  void startStopFunc(){
    startStop = !startStop;
    notifyListeners();
  }
  void millisecondsO(){
    milliseconds = 0;
    notifyListeners();
  }

// --UPDATE BREAKTIME AND STUDY TIMER--
  void setSelectTimeTrue(){
    selectTime = true;
    notifyListeners();
  }

  void setSelectTimeFalse(){
    selectTime = false;
    notifyListeners();
  }
//----------------------------------

//---------UPDATE 3 BUTTTONS----------
  void updateIsSelectedFalse(int num){
    isSelected[num] = false;
    notifyListeners();
  }

  void updateIsSelectedTrue(int num){
    isSelected[num] = true;
    notifyListeners();
  }

  void updateIsSelected (int Num){
    isSelected[Num] = !isSelected[Num];
    notifyListeners();
  }

//---------Study Timer----------
  void studyTimerControl(){
    Timer(Duration(milliseconds: 200),(){


    Timer.periodic(Duration(milliseconds: 10), (timer) {
      if(startStop){
        startStop=true;
        notifyListeners();
           if(valueSliderStudy != 0){
             if(milliseconds == 6000){
               print('1 Minute Completed');
               valueSliderStudy --;
               milliseconds = 0;
               notifyListeners();
             }else{
               milliseconds++;
               notifyListeners();
             }
           }else{
             timer.cancel();
             print('Study timer finished');
             valueSliderStudy =25;
             startStop = startStop;
             milliseconds=0;
             selectTime =false;
             notifyListeners();
             player.play('sound1.wav');
             breakTimerControl();
           }
         }else{
        startStop=false;
        notifyListeners();
        
           print('timer taskdata cancel');
           timer.cancel();

      }
    });

    });

  }
//-----------------------------------

  //---------Break Timer----------
  void breakTimerControl(){

    Timer(Duration(milliseconds: 100),(){
    Timer.periodic(Duration(milliseconds: 10), (timer) {
      if(startStop){
        if(valueSliderBreak != 0){
          if(milliseconds == 6000){
            print('1 Minute Completed');
            valueSliderBreak --;
            milliseconds = 0;
            notifyListeners();
          }else{
            milliseconds++;
            notifyListeners();
          }
        }else{
          timer.cancel();
          print('Study timer finished');
          valueSliderBreak =5;
          milliseconds=0;
          selectTime =false;
          notifyListeners();
          player.play('sound1.wav');
          studyTimerControl();
        }
      }else{
        print('timer taskdata cancel');
        timer.cancel();
      }
    });
    });
  }


  void ChangeStudyTime(double value){
    valueSliderStudy = value;
    notifyListeners();
  }

  void ChangeBreakTime(double value){
    valueSliderBreak = value;
    notifyListeners();
  }




}


////Study Timer ////

// if (isSelected[1] == true && isSelected[0] == false && isSelected[2] == false) {
//   if (valueSliderStudy != 0) {
//     if (milliseconds == 6000) {
//       print('1 Minute Completed');
//       valueSliderStudy --;
//       milliseconds = 0;
//       notifyListeners();
//     } else {
//       milliseconds++;
//       notifyListeners();
//     }
//   } else {
//     timer.cancel();
//     print('Study timer finished');
//     valueSliderStudy =25;
//     milliseconds=0;
//     selectTime =false;
//     notifyListeners();
//
//     player.play('sound1.wav');
//
//     breakTimerControl();
//   }
// } else if (isSelected[1] == false && isSelected[0] == true && isSelected[2] == false) {
//
//   print('second condition');
//   print('timer paused');
//   timer.cancel();
// } else if (isSelected[0] == false && isSelected[1] == false && isSelected[2] == true){
//   timer.cancel();
//   print('third condition');
//   print('Stop button clicked');
//   milliseconds =0;
//   valueSliderStudy =25;
//   notifyListeners();
// }else{
//   print('Unexpected Situration');
// }