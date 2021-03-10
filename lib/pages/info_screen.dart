import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_app/objects/info_input.dart';


class InfoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title: Title(color: Colors.white, child: Text('PomoLife',style: TextStyle(fontFamily: 'KaushanScript-Regular',fontSize: 30),)),backgroundColor: Color(0xFF0F1123),),
        body: Container(
    decoration: BoxDecoration(color: Color(0xFF0F1123),
      // borderRadius: BorderRadius.circular(20.0),
      //gradient: LinearGradient(begin: Alignment.bottomCenter,end: Alignment.topCenter,colors: [Color(0xFF0F1123), Color(0xFF04B9E6)]),
    ),
          child: Container(child: CarouselSlider(
            options: CarouselOptions(height: MediaQuery.of(context).size.height),
            items: imageList.map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 5.0),
                        decoration: BoxDecoration(
                          //121212,ffdf2b
                            color: Color(0xff0F1123),
                            borderRadius: BorderRadius.circular(60.0),
                        // gradient: LinearGradient(begin: Alignment.bottomLeft,end: Alignment.topRight,colors: [Color(0xffffdf2b), Color(0xFF6766ae)]),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                            ClipRRect(borderRadius: BorderRadius.circular(30),
                                child: Center(child: Image.asset('assets/photos/$i.png'))),


                            ],
                          ),
                        )
                    ),
                  );
                },
              );
            }).toList(),
          ),)
    ),
    );
  }
}
