import 'package:flutter/material.dart';
import 'package:weather_icons/weather_icons.dart';

import '../utils/constants.dart';

class HourlyWeatherButton extends StatelessWidget {
  HourlyWeatherButton({@required this.onPressed,@required this.day,@required this.temprature,@required this.icon, textColor,
    circleBgColor,
    iconColor, kpadding,
    blurradius, shadowcolor,
    spreadradius,bgcolor})
      :textColor=textColor ?? kprimaryTextColor,
        circleBgColor=circleBgColor ?? kCommoneffectsColor,
        iconColor = iconColor ?? kWheatherIconColor,
        blurradius = blurradius ?? kdefaultblurradius,
        kpadding=kpadding ?? kdefaultpadding,
        spreadradius = spreadradius ?? kdefaultspreadradius,
        shadowcolor = shadowcolor ?? kCommoneffectsColor,
        bgcolor = bgcolor??Colors.white;


  final Color textColor;
  final String day;
  final String temprature;
  final Color circleBgColor;
  final Color iconColor;
  final double kpadding;
  final double blurradius;
  final double spreadradius;
  final Color shadowcolor;
  final Color bgcolor;
  final IconData icon;
  final GestureTapCallback onPressed;
//  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        SizedBox(
          width: 16,
        ),
        GestureDetector(
          onTap: onPressed,
          child: Container(
            constraints: BoxConstraints(
              maxHeight: 140,
            ),
            child: Padding(
              padding: EdgeInsets.all(kpadding),
              child: Column(
                children: <Widget>[
                  Text(
                    day,
                    style: TextStyle(
                        fontSize: 12,
                        color: textColor,
                        fontFamily: kFontFamily),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  CircleAvatar(
                    backgroundColor: circleBgColor,
                    radius: 22,
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 10.0),
                      child: Icon(
                        icon,
                        color: iconColor,
                        size: 20,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '$temprature°C',
                    style: TextStyle(
                        fontSize: 14,
                        color: textColor,
                        fontFamily: kFontFamily),
                  ),
                ],
              ),
            ),
            decoration: ShapeDecoration(
                shape: StadiumBorder(),
                color: bgcolor,
                shadows: [
                  BoxShadow(
                      blurRadius: blurradius, spreadRadius: spreadradius, color: shadowcolor)
                ]),
          ),
        ),

      ],
    );
  }
}