import 'package:flutter/material.dart';
import 'file:///F:/Flutter_Learning/weather_app/lib/utils/constants.dart';
import 'package:weather_app/screens/home_page.dart';
import 'package:weather_app/screens/loading_screen.dart';

void main() => runApp(WeatherApp());

class WeatherApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
        primaryColor: kprimaryBackgroundColor,
        scaffoldBackgroundColor: kprimaryBackgroundColor
      ),
      home: LoadingPage(),
    );
  }
}
