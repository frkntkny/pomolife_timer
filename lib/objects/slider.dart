import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_app/pages/task_data.dart';
import 'package:square_percent_indicater/square_percent_indicater.dart';

class SliderObject extends StatefulWidget {
  
  double value;
  double min;
  double max;
  int divisions;
  String label;
  Function onChangedValue;
  SliderObject({this.value,this.min,this.max,this.divisions,this.label,this.onChangedValue});

  @override
  _SliderObjectState createState() => _SliderObjectState();
}

class _SliderObjectState extends State<SliderObject> {


  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 5,
      child: Center(child: SliderTheme(
        data: SliderTheme.of(context).copyWith(
          activeTrackColor: Colors.red[700],
          inactiveTrackColor: Colors.red[100],
          trackShape: RoundedRectSliderTrackShape(),
          trackHeight: 4.0,
          thumbShape: RoundSliderThumbShape(enabledThumbRadius: 12.0),
          thumbColor: Colors.redAccent,
          overlayColor: Colors.red.withAlpha(32),
          overlayShape: RoundSliderOverlayShape(overlayRadius: 28.0),
          tickMarkShape: RoundSliderTickMarkShape(),
          activeTickMarkColor: Colors.red[700],
          inactiveTickMarkColor: Colors.red[100],
          valueIndicatorShape: PaddleSliderValueIndicatorShape(),
          valueIndicatorColor: Colors.redAccent,
          valueIndicatorTextStyle: TextStyle(
            color: Colors.white,
          ),
        ),
        child: Slider(

          //
          value: widget.value ,
          min: widget.min ,
          max: widget.max,
          divisions: widget.divisions ,
          label: widget.label,
          onChanged: widget.onChangedValue,

        ),
      ),
      ),
    );
  }
}

