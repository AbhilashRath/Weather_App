//Container(
//margin: EdgeInsets.only(left: 10),
//alignment: Alignment.centerLeft,
//child: RichText(
//text: TextSpan(
//style: TextStyle(
//fontSize: 24,
//color: kprimaryTextColor,
//fontFamily: kFontFamily),
//children: <TextSpan>[
//TextSpan(text: 'Mon, '),
//TextSpan(
//text: '27 April',
//style: TextStyle(fontWeight: FontWeight.bold)),
//],
//),
//),
//)


//          SingleChildScrollView(
//            scrollDirection: Axis.horizontal,
//            child: Padding(
//              padding: const EdgeInsets.only(
//                  left: 25, bottom: 17, top: 17, right: 25),
//              child: Row(
//                children: <Widget>[
//                  HourlyWeatherButton(
//                    onPressed: () {
//                      setState(() {
//                        if(current_pressed!=0){
//                          pressed[current_pressed] = false;
//                          current_pressed = 0;
//                        }
//                        pressed[0] = true;
//                        print(pressed);
////                        changeState(0);
//                      });
//
//                    },
//                    textColor: pressed[0]?textcolor:kprimaryTextColor,
//                    circleBgColor: pressed[0]?circlebgcolor:kCommoneffectsColor,
//                    iconColor:pressed[0]?iconcolor:kWheatherIconColor ,
//                    blurradius: pressed[0]?blurradius:kdefaultblurradius,
//                    shadowcolor: pressed[0]?shadowcolor:kCommoneffectsColor,
//                    spreadradius: pressed[0]?spreadradius:kdefaultspreadradius,
//                    bgcolor: pressed[0]?bgcolor:Colors.white,
//
//                  ),
//                  SizedBox(
//                    width: 14,
//                  ),
//                  HourlyWeatherButton(
//                    onPressed: () {
//                      setState(() {
//                        setState(() {
//                          if(current_pressed!=1){
//                            pressed[current_pressed] = false;
//                            current_pressed = 1;
//                          }
//                          pressed[1] = true;
//                          print(pressed);
//
////                        changeState(0);
//                        });                      });
//                    },
//                      textColor: pressed[1]?textcolor:kprimaryTextColor,
//                      circleBgColor: pressed[1]?circlebgcolor:kCommoneffectsColor,
//                      iconColor:pressed[1]?iconcolor:kWheatherIconColor ,
//                      blurradius: pressed[1]?blurradius:kdefaultblurradius,
//                      shadowcolor: pressed[1]?shadowcolor:kCommoneffectsColor,
//                      spreadradius: pressed[1]?spreadradius:kdefaultspreadradius,
//                      bgcolor: pressed[1]?bgcolor:Colors.white
//                  ),
//                  SizedBox(
//                    width: 14,
//                  ),
//                  HourlyWeatherButton(
//                    onPressed: () {
//                      print('Pressed');
//                      print(pressed);
//
//                    },
//                  ),
//                  SizedBox(
//                    width: 14,
//                  ),
//                  HourlyWeatherButton(
//                    onPressed: () {
//                      print('Pressed');
//                      print(pressed);
//
//                    },
//                  ),
//                  SizedBox(
//                    width: 14,
//                  ),
//                  HourlyWeatherButton(
//                    onPressed: () {
//                      print('Pressed');
//                      print(pressed);
//
//                    },
//                  ),
//                  SizedBox(
//                    width: 14,
//                  ),
//                  HourlyWeatherButton(
//                    onPressed: () {
//                      print('Pressed');
//                      print(pressed);
//
//                    },
//                  ),
//                  SizedBox(
//                    width: 14,
//                  ),
//                ],
////            scrollDirection: Axis.horizontal,
//              ),
//            ),
//          ),