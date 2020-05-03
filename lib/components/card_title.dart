import 'package:flutter/material.dart';
import 'package:weather_icons/weather_icons.dart';

import '../utils/constants.dart';

class CardTitle extends StatelessWidget {
  CardTitle({@required this.day,@required this.temprature,@required this.weathericon});
  final String day;
  final String temprature;
  final IconData weathericon;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.baseline,
      textBaseline: TextBaseline.alphabetic,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Row(
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: <Widget>[
            Text(
              day,
              style: kCardTitleTextStyle,
            ),
            SizedBox(
              width: 12,
            ),
            Icon(
              weathericon,
              color: kWheatherIconColor,
            )
          ],
        ),
        Text(
          temprature,
          style: kCardTitleTextStyle,
        )
      ],
    );
  }
}
