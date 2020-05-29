import 'package:flutter/material.dart';

import 'Pages/Splash_Screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bookangy-one',
        theme: ThemeData(
        primarySwatch: Colors.green,
        scaffoldBackgroundColor: Color(0XFFCCCCCC)),
   home: SplashScreen(),
    routes: {
    '/home': (BuildContext context) => HomePage(),
    '/login': (BuildContext context) => LoginPage(),
    '/signup': (BuildContext context) => SignupPage(),
    '/about': (BuildContext context) => AboutPage(),
    },
    );
}


