import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'screens/MySecondScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          fontFamily: 'sfdisplay',
          textTheme: TextTheme(
              bodyText2: TextStyle(
                  color: Colors.black, fontSize: 16, letterSpacing: 0.8))),
      home: MySecondScreen(),
    );
  }
}
