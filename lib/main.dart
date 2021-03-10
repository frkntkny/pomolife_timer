import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app/pages/settings_screen_one.dart';
import 'pages/main_screen.dart';
import 'package:flutter_app/pages/settings_screen_drawer.dart';
import 'package:provider/provider.dart';
import 'package:flutter_app/pages/task_data.dart';
import 'package:flutter_app/pages/settings_screen_two.dart';
import 'package:flutter_app/pages/info_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Force Orientation
    SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft]);
    return ChangeNotifierProvider<TaskData>(
      create: (context)=>TaskData(),
      child: MaterialApp(
        theme: ThemeData(brightness: Brightness.dark ),
        debugShowCheckedModeBanner: false,

        initialRoute: '/',
        routes: {
          '/': (context) => MainScreen(),
          '/settings': (context) => SettingsScreenDrawer(),
          '/settingsOne': (context) => SettingsScreenOne(),
          '/settingsTwo': (context) => SettingsScreenTwo(),
          '/infoscreen': (context) => InfoScreen(),
        },),
    );
  }
}
