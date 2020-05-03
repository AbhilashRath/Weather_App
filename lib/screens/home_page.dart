import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:geolocator/geolocator.dart' as loc;

import 'package:weather_app/components/card_contents.dart';
import 'package:weather_app/components/card_title.dart';
import 'package:weather_app/components/graph_widget.dart';
import 'package:weather_app/components/hourly_weather_button.dart';
import 'package:weather_app/components/reusable_card.dart';
import 'package:weather_app/components/title_place_widget.dart';
import 'package:weather_app/services/location.dart';
import 'package:weather_app/services/networkinghelper.dart';
import 'package:intl/intl.dart';
import 'package:weather_app/services/weather_data.dart';
import 'package:weather_app/services/daily_weather_data.dart';

import 'package:weather_icons/weather_icons.dart';

import '../utils/constants.dart';


class HomePage extends StatefulWidget {
  HomePage({@required this.weatherdata,@required this.place});
  final weatherdata;
  final place;
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //variables for UI
  String address;
  String d = DateFormat('EEEE').format(DateTime.now());
  int current_pressed= 0;
  List<bool> pressed ;
  List<DailyData> graphdata;
  String wind;
  String temprature;
  String humidity;
  String direction;
  String uv;
  IconData WeatherIcon;
  Weather w;
  dynamic weatherForButtons;


  @override
  void initState(){
    super.initState();
    print(d);
    updateUI(widget.weatherdata,widget.place);
  }
  void updateUI(dynamic weather, dynamic place){
    address = place;
    weatherForButtons=weather;
    buildList(weather);
    buildGraph(weather);
    updateCard(weather, current_pressed);

  }
  void buildGraph(dynamic weather){
    graphdata = List();
    for(int i=0;i<weather['daily'].length-1;i++){

      graphdata.add(
          DailyData(DateFormat('EEE')
              .format(DateTime.
          fromMillisecondsSinceEpoch(
              weather['daily'][i]['dt']*1000)).toString(),weather['daily'][i]['feels_like']['day'],Color(0xFF10103B)));
      graphdata[current_pressed].color = Colors.orange;
    }

  }
  void buildList(dynamic weather){
    pressed = List(weather['daily'].length-1);
    for(int i=0;i<weather['daily'].length-1;i++){
      pressed[i] = false;
    }
    pressed[current_pressed] = true;
    print(pressed);
  }

  void updateCard(dynamic weather, int index){
    w = Weather(weatherdata: weather,index: index);
    wind = w.getWind();
    temprature = w.getTemprature();
    humidity = w.getHumidity();
    direction = w.getDirection();
    uv= w.getUV();
    d= w.getDay();
    print(index);
    WeatherIcon = w.getWeatherIcon(weather['daily'][index]['weather'][0]['id']);
  }


  //defining variables for changing state of button on being pressed
 Color textcolor = Colors.white;
 Color circlebgcolor = Color(0xFF10103B);
 Color shadowcolor = Color(0xFF1E1F45);
 Color bgcolor = Color(0xFF1E1F45);
 double blurradius = 15;
 double spreadradius = 0;
 Color iconcolor = Colors.white;
 double padding = 24;
 //defining variables for changing state of button on being pressed


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Weather Forecast',
          style: kAppBartitleText,
        ),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          SizedBox(
            width: double.infinity,
            height: 20,
          ),
          TitlePlaceWidget(Place: address,),
          SizedBox(
            width: double.infinity,
            height: 20,
          ),
          ReusableCard(widgets: <Widget>[
            CardTitle(day: d,temprature: '$temprature°C',weathericon: WeatherIcon,),
            CardContents(property1: 'Wind',value1: '$wind m/s',property2: 'Humidity',value2: '$humidity%',),
            CardContents(property1: 'Direction',value1: '$direction°',property2: 'UV',value2: '$uv',),
          ],),
          SizedBox(
            width: double.infinity,
            height: 15,
          ),
          SizedBox(
            height: 175,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.only(left:15,right: 5),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: pressed.length,
                itemBuilder: (BuildContext context, int index) {
                  pressed[index]==true?graphdata[index].color = Colors.orange:graphdata[index].color = Color(0xFF10103B);
                  return HourlyWeatherButton(onPressed: () {
                    setState(() {
                      if (current_pressed != index) {
                        pressed[current_pressed] = false;
                        current_pressed = index;
                      }
                      pressed[index] = true;
                      updateCard(weatherForButtons, current_pressed);


                      print(pressed);
                    });

                    print(index);
                    print(weatherForButtons['lat']);
                    print(weatherForButtons['lon']);
                    print(weatherForButtons['daily'][index]['dt']);
                    print(weatherForButtons['daily'][index]['weather'][0]['id']);
                   print( DateFormat('EEE').format(DateTime.fromMillisecondsSinceEpoch(weatherForButtons['daily'][index]['dt']*1000)));
                  },
                    icon:w.getWeatherIcon(weatherForButtons['daily'][index]['weather'][0]['id']),
                    temprature:weatherForButtons['daily'][index]['feels_like']['day'].toInt().toString()  ,
                    day:DateFormat('EEE').format(DateTime.fromMillisecondsSinceEpoch(weatherForButtons['daily'][index]['dt']*1000)).toString().toUpperCase(),
                      textColor: pressed[index] ? textcolor : kprimaryTextColor,
                      circleBgColor: pressed[index]
                          ? circlebgcolor
                          : kCommoneffectsColor,
                      iconColor: pressed[index] ? iconcolor : kWheatherIconColor,
                      blurradius: pressed[index] ? blurradius : kdefaultblurradius,
                      shadowcolor: pressed[index]
                          ? shadowcolor
                          : kCommoneffectsColor,
                      spreadradius: pressed[index]
                          ? spreadradius
                          : kdefaultspreadradius,
                      bgcolor: pressed[index] ? bgcolor : Colors.white,
                  );
                },
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top:15,right:15,left:15,bottom:15),
              child: GraphWidget(graphData: graphdata,),
            ),
          ),
        ],
      ),
    );
  }
}









//          TodayWidget(),
//          TempratureWidget(),
//          Text(
//            'Mumbai, India',
//            style: TextStyle(
//              fontFamily: 'Poppins',
//              fontSize: 18,
//
//            ),
//          )
