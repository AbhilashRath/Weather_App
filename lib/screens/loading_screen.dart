
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:geocoder/geocoder.dart';
import 'file:///F:/Flutter_Learning/weather_app/lib/utils/constants.dart';
import 'package:weather_app/screens/home_page.dart';
import 'package:weather_app/services/location.dart';
import 'package:weather_app/services/networkinghelper.dart';
import 'package:weather_app/services/address.dart' as ad;

class LoadingPage extends StatefulWidget {
  @override
  _LoadingPageState createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  void getDataFromApi() async {
    Location location  = Location();
    await location.getLocation();
    double lattitude = location.lattitude;
    double longitude = location.longitude;
    ad.Address address = ad.Address(latitude:lattitude , longitude: longitude);
    String placeString = await address.getAddress();
    String url = 'https://api.openweathermap.org/data/2.5/onecall?lat=$lattitude&lon=$longitude&appid=$apikey&units=metric';
    Networking networking = Networking(url);
    var data = await networking.getData();
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) =>HomePage(weatherdata: data, place: placeString,)));

  }


  @override
  void initState(){
    super.initState();
    getDataFromApi();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kprimaryBackgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 150,
                width: 150,
                child: Image.asset('images/app_logo.png')),
            SizedBox(
              height: 40,
            ),
            SpinKitWave(
              color: kprimaryTextColor,
              size: 35,

            )


          ],
        )
      ),
    );
  }
}
