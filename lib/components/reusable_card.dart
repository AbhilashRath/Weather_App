import 'package:flutter/material.dart';

import '../utils/constants.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({this.widgets});
  final List<Widget> widgets;


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 30, right: 30),
      height: 160,
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: widgets,
        ),
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            //(x,y)
              blurRadius: 10,
              spreadRadius: 1,
              color: kCommoneffectsColor)
        ],
      ),
    );
  }
}
