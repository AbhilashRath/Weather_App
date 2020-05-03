import 'package:flutter/material.dart';
import 'package:weather_icons/weather_icons.dart';

const kprimaryBackgroundColor = Color(0xFFF3FBFF);
const kFontFamily = 'Poppins';
const kprimaryTextColor = Color(0xFF424B6C);
const kAppBartitleText = TextStyle(fontFamily: 'Poppins',color: kprimaryTextColor,fontWeight: FontWeight.bold);
const ksleeticon = WeatherIcons.sleet;
const kTitleDayText = TextStyle(fontSize: 30, fontFamily: 'Poppins');
const kTitleDateText = TextStyle(fontSize: 16, fontFamily: 'Poppins');
const kTempratureText = TextStyle(
  fontSize: 100,
  fontFamily: 'Poppins',
);
const kDegreeSymbolText =
    TextStyle(fontSize: 30, fontFamily: 'Poppins', fontWeight: FontWeight.w100);
const kCelsiusSymbolText = TextStyle(
    fontSize: 50, fontFamily: 'Poppins', fontWeight: FontWeight.w100);
const kEntityTextColor= Color(0xFFBFC5C9);
const kWheatherIconColor = Color(0xFF5098E4);
const kCommoneffectsColor = Color(0xFFDFE7EE);
const kTitlePlaceTextStyle = TextStyle(
    color: kprimaryTextColor,
    fontSize: 18,
    fontFamily: kFontFamily,
    fontWeight: FontWeight.bold);
const kCardTitleTextStyle = TextStyle(
    fontSize: 18,
    fontFamily: 'Poppins',
    color: kprimaryTextColor,
    fontWeight: FontWeight.bold);
const kCardContentPropertyStyle =  TextStyle(
  fontSize: 14,
  fontFamily: 'Poppins',
  color: kprimaryTextColor,
);
const kCardContentValueStyle = TextStyle(
fontSize: 14,
fontFamily: 'Poppins',
color: kEntityTextColor,
);
const kdefaultpadding = 15.0;
const kdefaultblurradius = 10.0;
const kdefaultspreadradius = 1.0;
const apikey = 'b19f23d6304b17aaad167dcc2167f210';