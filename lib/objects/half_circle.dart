import 'package:flutter/material.dart';
import 'package:flutter_app/objects/quarter_circle.dart';

class HalfCircle extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 120.0,
          height: 120.0,
          child: QuarterCircle(color: Color(0xFFE5E5E8),
            circleAlignment: CircleAlignment.bottomRight,
          ),
        ),
        SizedBox(
          width: 120.0,
          height: 120.0,
          child: QuarterCircle(color: Color(0xFFE5E5E8),
            circleAlignment: CircleAlignment.bottomLeft,
          ),
        ),

      ],
    );
  }
}

