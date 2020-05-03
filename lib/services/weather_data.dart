import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:weather_icons/weather_icons.dart';
class Weather{
  Weather({@required this.weatherdata,@required this.index});

  final weatherdata;
  final int index;

  String getDay(){
    return DateFormat('EEEE').format(DateTime.fromMillisecondsSinceEpoch(weatherdata['daily'][index]['dt']*1000)).toString();
  }

  String getTemprature(){
    return weatherdata['daily'][index]['feels_like']['day'].toString();
  }
  String getWind(){
    return weatherdata['daily'][index]['wind_speed'].toInt().toString();
  }
  String getHumidity(){
    return weatherdata['daily'][index]['humidity'].toInt().toString();
  }
  String getDirection(){
    return weatherdata['daily'][index]['wind_deg'].toInt().toString();
  }
  String getUV(){
    return weatherdata['daily'][index]['uvi'].toInt().toString();
  }
  IconData getWeatherIcon(int condition) {
    if (condition < 300) {
      return WeatherIcons.day_thunderstorm;
    } else if (condition < 400) {
      return WeatherIcons.showers;
    } else if (condition < 600) {
      return WeatherIcons.rain;
    } else if (condition < 700) {
      return WeatherIcons.snow;
    } else if (condition < 800) {
      return WeatherIcons.day_haze;
    } else if (condition == 800) {
      return WeatherIcons.day_sunny;
    } else if (condition <= 804) {
      return WeatherIcons.cloudy;
    } else {
      return WeatherIcons.na;
    }
  }


}