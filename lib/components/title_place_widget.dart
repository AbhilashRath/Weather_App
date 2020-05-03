import 'package:flutter/material.dart';

import '../utils/constants.dart';

class TitlePlaceWidget extends StatelessWidget {
  TitlePlaceWidget({@required this.Place});

  final String Place;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 15),
        child: Text(
            Place,
            style: kTitlePlaceTextStyle));
  }
}